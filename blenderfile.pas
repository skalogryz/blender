unit BlenderFile;

{$mode delphi}{$H+}

interface

// http://www.atmind.nl/blender/mystery_ot_blend.html
// http://www.atmind.nl/blender/blender-sdna-249.html
// https://archive.blender.org/wiki/index.php/Dev:Source/Architecture/File_Format/

uses
  Classes, SysUtils;

type
  TFourChar  = array [0..3] of char;
  PFourChar  = ^TFourChar;

  TFilePtr32 = LongWord;
  TFilePtr64 = QWord;

  TFileHeader = packed record
    id        : array [0..6] of char;
    ptrsize   : char;
    endiannes : char;
    vernum    : array [0..2] of char;
  end;

  TFileBlock32 = packed record
    code      : array [0..3] of char;
    size      : Integer;
    memptr    : TFilePtr32;
    sdnaidx   : Integer;
    count     : Integer;
  end;

  TFileBlock = packed record
    code      : array [0..3] of char;
    size      : Integer;
    memptr    : TFilePtr64;
    sdnaidx   : Integer;
    count     : Integer;
  end;

  { TBlendReader }

  TBlendReader = class(TObject)
  private
    fPtrSize : Byte; // 4 or 8
    isPtr32  : Boolean;
    fisPtrLE : Boolean; // true is little endian, false - big endian

    fPos     : Int64;
    fData    : TStream;
    fEndBFound : Boolean;
    fBlockOffset : Int64;

    function GetBlockCode: string;
    function GetBlockOffset: Int64;
    function GetBlockSize: Int64;
    procedure SetError(AErrCode: Integer);
  public
    ver     : array [0..2] of char;
    isEof   : Boolean;
    isError : Boolean;
    ErrCode : Integer;

    curBlock : TFileBlock;
    function FindFirst(st: TStream): Boolean; overload;
    function NextBlock: Boolean;
    property Offset: Int64 read fPos;
    property PtrSize: Byte read fPtrSize;
    property isPtrLE: Boolean read fisPtrLE;
    property Data: TStream read fData;
    property DataOffset: Int64 read GetBlockOffset;
  end;

const
  FILEID : array[0..6] of char = 'BLENDER';
  PTR_SIZE_32 = '_';
  PTR_SIZE_64 = '-';
  PTR_LE = 'v';
  PTR_BE = 'V';


  BLOCK_ENDB   = 'ENDB';
  BLOCK_DATA   = 'DATA';
  BLOCK_TEST   = 'TEST';
  BLOCK_GLOBAL = 'GLOB';
  BLOCK_SCENE  = 'SC'#0#0;
  BLOCK_WM     = 'WM'#0#0;
  BLOCK_SDNA   = 'DNA1';

const
  ERR_OK         = 0;
  ERR_BADID      = -1;
  ERR_BADPTRSIZE = -2;
  ERR_CANTREAD   = -3;

function ReadChar(st: TStream): Char; inline;
function ReadFilePtr(st: TStream; is32: Boolean): TFilePtr64; inline;
function ReadBlockHdr(st: TStream; var bh: TFileBlock; is32: Boolean; isLE: Boolean): Integer;

type
  TSDNAField = packed record
    idxType : Word;
    idxName : Word;
  end;

  TSDNAStruct = packed record
    idxType   : Word;
    fldsCount : Word;
    flds      : array of TSDNAField;
  end;

  TSDNA = record
    namesCount : integer;
    names      : array of string;
    typesCount : Integer;
    types      : array of string;
    typesLen   : array of Word;
    strcCount  : Integer;
    strcs      : array of TSDNAStruct;
  end;

function ParseSDNA(const data: array of byte; Size: Integer; var sdna: TSDNA): Boolean; overload;
function ParseSDNA(s: TStream; ofs: Int64; size: Integer; var sdna: TSDNA): Boolean; overload;

const
  SDNA_SDNA : TFourChar = 'SDNA';
  SDNA_NAME : TFourChar = 'NAME';
  SDNA_TYPE : TFourChar = 'TYPE';
  SDNA_TLEN : TFourChar = 'TLEN';
  SDNA_STRC : TFourChar = 'STRC';

function CompareFour(const f1, f2: TFourChar): Boolean; inline;

const
  PACKED_HEADER_SIZE = 10;

function isPacked(s: TStream; out headrSize: Integer): Boolean;

implementation

function isPacked(s: TStream; out headrSize: Integer): Boolean;
var
  buf : array [0..PACKED_HEADER_SIZE-1] of byte;
  pos : Int64;
begin
  pos := s.Position;
  try
    s.Read(buf, sizeof(buf));
    Result := (buf[0]=$1f) and (buf[1]=$8b);
    if Result then headrSize := sizeof(buf)
    else headrSize := 0;
  finally
    s.Position := pos;
  end;
end;

function CompareFour(const f1, f2: TFourChar): Boolean; inline;
begin
  Result:=PInteger(@f1)^=PInteger(@f2)^;
end;


function ReadBlockHdr(st: TStream; var bh: TFileBlock; is32: Boolean; isLE: Boolean): Integer;
var
  p : Int64;
begin
  try
    p:=st.Position;
    st.ReadBuffer(bh.code, sizeof(bh.code));
    if isLE then begin
      bh.size    :=st.ReadDWord;
      bh.memptr  :=LEtoN(ReadFilePtr(st, is32));
      bh.sdnaidx :=LEtoN(st.ReadDWord);
      bh.count   :=LEtoN(st.ReadDWord);
    end else begin
      bh.size    := BEtoN(bh.size);
      bh.memptr  := BEtoN(ReadFilePtr(st, is32));
      bh.sdnaidx := BEtoN(bh.sdnaidx);
      bh.count   := BEtoN(bh.count);
    end;
    Result:=st.Position-p;
  except
    Result:=-1;
  end;
end;

function ReadChar(st: TStream): Char; inline;
begin
  Result:=Char(st.ReadByte);
end;

function ReadFilePtr(st: TStream; is32: Boolean): TFilePtr64; inline;
begin
  if is32
    then Result:=st.ReadDWord
    else Result:=st.ReadQWord;
end;

{ TBlendFile }

procedure TBlendReader.SetError(AErrCode: Integer);
begin
  isError:=true;
  ErrCode:=AErrCode;
end;

function TBlendReader.GetBlockCode: string;
begin
  Result := curBlock.code;
end;

function TBlendReader.GetBlockOffset: Int64;
begin
  Result := fBlockOffset;
end;

function TBlendReader.GetBlockSize: Int64;
begin
  Result := curBlock.size;
end;

function TBlendReader.FindFirst(st: TStream): Boolean;
var
  buf   : array [0..6] of char;
begin
  Result:=false;
  fData:=st;
  fPos:=fData.Position;
  fData.Read(buf[0], length(buf));
  if buf<>FILEID then begin
    SetError(ERR_BADID);
    Exit;
  end;

  case ReadChar(st) of
    PTR_SIZE_32: fptrsize:=4;
    PTR_SIZE_64: fptrsize:=8;
  else
    fptrsize:=0;
  end;
  isPtr32:=ptrsize=4;

  fisPtrLE := ReadChar(st) = PTR_LE;
  st.ReadBuffer(ver[0], length(ver));

  Result:=true;

  fPos:=st.Position;
  iseof:=false;
  fEndBFound:=false;

  NextBlock;
end;

function TBlendReader.NextBlock: Boolean;
var
  hdr : TFileBlock;
  ofs : Integer;
begin
  Result:=false;
  if fEndBFound then begin
    isEof:=true;
  end;

  if isEof or isError then Exit;

  if fData.Position<>fPos then fData.Position:=fPos;

  ofs:=ReadBlockHdr(fData, hdr, isPtr32, isPtrLE);
  curBlock:=hdr;
  if ofs<0 then begin
    SetError(ERR_CANTREAD);
    Exit;
  end;
  if curBlock.code=BLOCK_ENDB then
    fEndBFound:=true;

  inc(fPos,ofs);
  fBlockOffset:=fPos;
  inc(fPos,hdr.size);
  Result:=true;
end;

{
procedure TBlendReader.WriteToStream(st: TStream);
begin
  st.Write(FILEID[0], length(FILEID));
  case ptrsize of
    4: st.WriteByte(byte(PTR_SIZE_32));
    8: st.WriteByte(byte(PTR_SIZE_64));
  end;
  if isPtrLe
    then st.WriteByte(byte(PTR_LE))
    else st.WriteByte(byte(PTR_BE));

  st.WriteBuffer(ver[0], length(ver));
end;
}

function ParseStrArray(const data: array of byte; idx: Integer;
  var str: array of string; strcount: Integer): Integer;
var
  i, j : integer;
  l    : integer;
begin
  j:=idx;
  i:=0;
  while strCount>0 do begin
    if data[idx]=0 then begin
      l:=idx-j;

      SetLength(str[i], l);
      if l>0 then Move(data[j], str[i][1], l);

      inc(i);
      dec(strCount);

      j:=idx+1;
    end;
    inc(idx);
  end;
  Result:=idx;
end;

function ParseSDNA(const data: array of byte; Size: Integer; var sdna: TSDNA): Boolean; overload;
var
  i   : Integer;
  j   : Integer;
  f   : Integer;
begin
  i:=0;
  Result:=CompareFour( PFourChar(@data[i])^, SDNA_SDNA);
  if not Result then Exit;
  inc(i, 4);
  if CompareFour(PFourChar(@data[i])^, SDNA_NAME) then begin
    inc(i,4);
    sdna.namesCount:=PInteger(@data[i])^;
    inc(i,4);
    SetLength(sdna.names, sdna.namesCount);
    i:=ParseStrArray(data, i, sdna.names, sdna.namesCount);
    i:=(i+3) div 4*4;
  end;
  if CompareFour(PFourChar(@data[i])^, SDNA_TYPE) then begin
    inc(i,4);
    sdna.typesCount:=PInteger(@data[i])^;
    inc(i,4);
    SetLength(sdna.types, sdna.typesCount);
    i:=ParseStrArray(data, i, sdna.types, sdna.typesCount);
    i:=(i+3) div 4*4;
  end;
  if CompareFour(PFourChar(@data[i])^, SDNA_TLEN) then begin
    inc(i,4);
    SetLength(sdna.typesLen, sdna.typesCount);
    Move(data[i], sdna.typesLen[0], sdna.typesCount*sizeof(Word));
    inc(i, sdna.typesCount*sizeof(Word));
    i:=(i+3) div 4*4;
  end;
  if CompareFour(PFourChar(@data[i])^, SDNA_STRC) then begin
    inc(i,4);
    sdna.strcCount:=PInteger(@data[i])^;
    inc(i,4);
    SetLength(sdna.strcs, sdna.strcCount);
    for j:=0 to sdna.strcCount-1 do begin
       sdna.strcs[j].idxType:=PWord(@data[i])^;
       inc(i,2);
       sdna.strcs[j].fldsCount:=PWord(@data[i])^;
       inc(i,2);
       SetLength(sdna.strcs[j].flds, sdna.strcs[j].fldsCount);

       for f:=0 to sdna.strcs[j].fldsCount-1 do begin
         sdna.strcs[j].flds[f].idxType:=PWord(@data[i])^;
         inc(i,2);
         sdna.strcs[j].flds[f].idxName:=PWord(@data[i])^;
         inc(i,2);
       end;
    end;
  end;
end;

function ParseSDNA(s: TStream; ofs: Int64; size: Integer; var sdna: TSDNA): Boolean; overload;
var
  buf : array of byte;
begin
  FillChar(sdna, sizeof(sdna),0);
  if size=0 then begin
    Result:=false;
    Exit;
  end;
  SetLength(buf, size);
  s.Position:=ofs;
  s.Read(buf[0], size);
  Result:=ParseSDNA(buf, size, sdna);
end;

end.

