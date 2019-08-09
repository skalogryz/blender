unit BlenderReadUtils;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes
  ,gmap, ghashmap, gvector
  ,BlenderFile, BlenderTypesUtils;

type

  { TBlendBlock }

  TBlendBlock = class(TObject)
    header: TFileBlock;
    fileOfs : Int64;
    constructor Create(aheader: TFileBlock; aofs: Int64);
  end;

  { TBlendBlockMapCompare }

  TBlendBlockMapCompare = class
    class function c(addr1, addr2: Int64): Boolean;
  end;

  // keeps TBlendBlock by their "memptr" for an easier connection
  TBlendBlockMap = specialize TMap<Int64, TBlendBlock, TBlendBlockMapCompare>;

  { TBlendBlockList }

  TBlendBlockList = class(specialize TVector<TBlendBlock>)
  private
    function GetCount: Integer;
  public
    function Add(block: TBlendBlock): Integer;
    property Count: Integer read GetCount;
  end;

  { TBlend }

  TBlend = class(TObject)
  public
    blocks      : TBlendBlockList; // of TBlendBlock
    dna         : TSDNA;
    blockmap    : TBlendBlockMap;
    ptrSize     : Integer;
    isLittleEnd : Boolean;
    constructor Create;
    destructor Destroy; override;
    function AddBlock(const header: TFileBlock; dataFileOfs: int64): TBlendBlock;
    function BlockAtMemPtr(const memptr: Int64): TBlendBlock;
  end;

  { TBlendDNA }

  // These are extra information of normalized reference of a field
  TBlendDNAStructField = record
    ofs     : Integer; // offset
    size    : Integer; // the actualy size of the field. For pointers,
                       //   this would be PtrSize
                       //   for arrays this is type size * array size
    nameidx : Integer; // the index in namehash of normalized named
    ptrmod  : TPointerModifier;
    arr     : TArrayIndices;
  end;

  TBlendDNAStruct = record
    field : array of TBlendDNAStructField;
  end;

  { TStringHash }

  TStringHashCaseSensitive = class
    class function hash(const key1: string; sz: Integer): SizeUInt;
    class function equal(const key1, key2: string): Boolean;
  end;

  TBlendDNANameHash = specialize THashmap<string, integer, TStringHashCaseSensitive>;

  TBlendDNA = class(TObject)
  private
    prepdna    : array of TBlendDNAStruct; // each entry in prepDna correpsonds to a struct in "dna"
    typetostr  : array of Integer; // converstion of TypeIdx to StructIdx (if available)

    namehash   : TBlendDNANameHash; // normalized names. No modifiers.
    structhash : TBlendDNANameHash;
  protected
    procedure PrepareDNA;
  public
    ptrSize    : integer; // must have pointer size! to be able to prepare structures propertly
    dna        : TSDNA;
    constructor Create(aptrSize: integer);
    destructor Destroy; override;

    procedure SetDNA(const adna: TSDNA); overload;
    procedure SetDNA(const buf: array of byte; bufSize: Integer); overload;

    function GetFieldSizeOfs(stidx: Integer; fieldidx: Integer;
      out fieldOfs, fieldSize: Integer): Boolean;
    function GetFieldSizeOfsStr(stidx: Integer; fieldidx: Integer;
      out fieldOfs, fieldSize, fieldStIdx: Integer): Boolean;
    function GetFieldAttribs(stidx: Integer; fieldidx: Integer;
      out ptrmod: TPointerModifier; out arr: TArrayIndices): Boolean;

    function StructIndex(const name: string): Integer;
    function FieldIndex(structIdx: Integer; const fieldname: string): Integer;
    function FieldIndex(const structname, fieldname: string): Integer;
    function NameIndex(const name: string): Integer;
  end;

  { TBlendBinReader }

  TBlendBinReader = class(TObject)
  private
    fptr32   : Boolean;
    fLitEnd  : Boolean;

    fSource  : TStream;
    fOfs     : Int64;
  public
    constructor Create(aLittleEnd, APtr32: Boolean);
    procedure SetSource(ASource: TStream; Ofs: Int64);

    function Read(const ofs: Integer; out vl: Int8): Boolean; overload;
    function Read(const ofs: Integer; out vl: UInt8): Boolean; overload;
    function Read(const ofs: Integer; out vl: Int16): Boolean; overload;
    function Read(const ofs: Integer; out vl: UInt16): Boolean; overload;
    function Read(const ofs: Integer; out vl: Int32): Boolean; overload;
    function Read(const ofs: Integer; out vl: UInt32): Boolean; overload;
    function Read(const ofs: Integer; out vl: Int64): Boolean; overload;
    function Read(const ofs: Integer; out vl: UInt64): Boolean; overload;
    function Read(const ofs: Integer; out vl: Single): Boolean; overload;
    function Read(const ofs: Integer; out vl: Double): Boolean; overload;
    function ReadPtr(const ofs: Integer; out vl: UInt64): Boolean;
    function ReadBuf(const ofs: Integer; var dst: array of byte; dstLen: Integer): Boolean;

    property Source: TStream read fSource;
    property Offset: Int64 read fOfs;
    function SizeOfPtr: integer;
    property isLittleEndian: Boolean read fLitEnd;
  end;

  TBlendStructReadStack = record
    ofs  : Int64;   // (absolute) offset
    stid : integer; // structure index
  end;

  { TBlendStructRead }

  TBlendStructRead = class(TObject)
  private
    fbinReader  : TBlendBinReader;
    fDNA       : TBlendDNA;
    fStructIdx : integer;

    fStack     : array of TBlendStructReadStack;
    fStackCnt  : integer;

    function GetFieldOffset(const fieldName: string; out ofs, len: integer): Boolean;
    function GetSource: TStream;
  public
    constructor Create(aLittleEnd, APtr32: Boolean);
    destructor Destroy; override;
    procedure SetSource(ASource: TStream; Ofs: Int64; ABlendDNA: TBlendDNA; AStructIdx: Integer);

    procedure PushStruct(AOfs: Int64; AStructIdx: Integer; isRelativeOfs: Boolean);
    function PopStruct: Boolean;

    function Read(const fieldName: string; out vl: Int8): Boolean; overload;
    function Read(const fieldName: string; out vl: UInt8): Boolean; overload;
    function Read(const fieldName: string; out vl: Int16): Boolean; overload;
    function Read(const fieldName: string; out vl: UInt16): Boolean; overload;
    function Read(const fieldName: string; out vl: Int32): Boolean; overload;
    function Read(const fieldName: string; out vl: UInt32): Boolean; overload;
    function Read(const fieldName: string; out vl: Int64): Boolean; overload;
    function Read(const fieldName: string; out vl: UInt64): Boolean; overload;
    function Read(const fieldName: string; out vl: Single): Boolean; overload;
    function Read(const fieldName: string; out vl: Double): Boolean; overload;
    function ReadPtr(const fieldName: string; out vl: UInt64): Boolean;
    function ReadBuf(const fieldName: string; var dst: array of byte; dstLen: Integer): Boolean;

    function ReadStr(const fieldName: string; var dst: string): Boolean; // the length is taken from the field length

    property Source: TStream read GetSource;
    property StructIdx: Integer read fStructIdx;
    property BinReader: TBlendBinReader read fbinReader;
  end;

function ReadFromStream(blend: TBlend; source: TStream): Boolean;

implementation

function ReadFromStream(blend: TBlend; source: TStream): Boolean;
var
  rdr : TBlendReader;
  b   : TBlendBlock;
begin
  rdr := TBlendReader.Create;
  try
    if not rdr.FindFirst(source) then begin
      Result := false;
      Exit;
    end;
    blend.ptrSize := rdr.PtrSize;
    blend.isLittleEnd := rdr.isPtrLE;

    while rdr.NextBlock do begin
      b := blend.AddBlock(rdr.curBlock, rdr.DataOffset);
      if rdr.curBlock.Code = BLOCK_SDNA then
        ParseSDNA(rdr.Data, rdr.DataOffset, rdr.curBlock.Size, blend.dna);
    end;
    Result := true;
  finally
    rdr.Free;
  end;
end;

{ TBlendBlockList }

function TBlendBlockList.GetCount: Integer;
begin
  Result := Size;
end;

function TBlendBlockList.Add(block: TBlendBlock): Integer;
begin
  pushback(block);
  Result := Count-1;
end;

{ TBlendStructRead }

function TBlendStructRead.GetFieldOffset(const fieldName: string; out ofs,
  len: integer): Boolean;
begin
  Result := Assigned(fDNA)
    and fDNA.GetFieldSizeOfs(fStructIdx, fDNA.FieldIndex(fStructIdx, fieldName), ofs, len);
  if not Result then begin
    ofs := 0;
    len := 0;
  end;
end;

function TBlendStructRead.GetSource: TStream;
begin
  Result := binReader.Source;
end;

constructor TBlendStructRead.Create(aLittleEnd, APtr32: Boolean);
begin
  inherited Create;
  fbinReader := TBlendBinReader.Create(alittleEnd, Aptr32);
end;

destructor TBlendStructRead.Destroy;
begin
  fbinReader.Free;
  inherited Destroy;
end;

procedure TBlendStructRead.SetSource(ASource: TStream; Ofs: Int64;
  ABlendDNA: TBlendDNA; AStructIdx: Integer);
begin
  binReader.SetSource(ASource, Ofs);
  fDNA := ABlendDNA;
  fstructIdx := AStructIdx;
end;

procedure TBlendStructRead.PushStruct(AOfs: Int64; AStructIdx: Integer; isRelativeOfs: Boolean);
begin
  if length(fStack) = fStackCnt then
    SetLength(fStack, 4)
  else
    SetLength(fStack, fStackCnt * 2);
  fStack[fStackCnt].ofs := binReader.Offset;
  fStack[fStackCnt].stid := fStructIdx;
  inc(fStackCnt);
  if isRelativeOfs then
    SetSource(binReader.Source, binReader.Offset+AOfs, fDNA, AStructIdx)
  else
    SetSource(binReader.Source, AOfs, fDNA, AStructIdx)
end;

function TBlendStructRead.PopStruct: Boolean;
begin
  Result := fStackCnt>0;
  if not Result then Exit;
  dec(fStackCnt);
  SetSource(binReader.Source, fStack[fStackCnt].ofs, fDNA, fStack[fStackCnt].stid);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: Int8): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: UInt8
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: Int16
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: UInt16
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: Int32
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: UInt32
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: Int64
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: UInt64
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: Single
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.Read(const fieldName: string; out vl: Double
  ): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= sizeof(vl));
  if not Result then Exit;
  Result := binReader.Read(ofs, vl);
end;

function TBlendStructRead.ReadPtr(const fieldName: string; out vl: UInt64): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= binReader.SizeOfPtr);
  if not Result then Exit;
  Result := binReader.ReadPtr(ofs, vl);
end;

function TBlendStructRead.ReadBuf(const fieldName: string;
  var dst: array of byte; dstLen: Integer): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len) and (len >= dstLen);
  if not Result then Exit;
  Result := binReader.ReadBuf(ofs, dst, dstLen);
end;

function TBlendStructRead.ReadStr(const fieldName: string; var dst: string): Boolean;
var
  ofs, len : Integer;
begin
  Result := GetFieldOffset(fieldName, ofs, len);
  if not Result then Exit;
  SetLength(dst, len);
  if len = 0 then begin
    dst := '';
    Result := true;
  end else
    Result := binReader.ReadBuf(ofs, PByteArray(@dst[1])^, len);
end;

{ TBlendBinReader }

constructor TBlendBinReader.Create(aLittleEnd, APtr32: Boolean);
begin
  inherited Create;
  fLitEnd := aLittleEnd;
  fptr32 := APtr32;
end;

procedure TBlendBinReader.SetSource(ASource: TStream; Ofs: Int64);
begin
  fSource := ASource;
  fOfs := Ofs;
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: Int8): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: UInt8): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: Int16): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
  if Result then begin
    if fLitEnd then vl := LEtoN(vl)
    else vl := BEtoN(vl);
  end;
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: UInt16
  ): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
  if Result then begin
    if fLitEnd then vl := LEtoN(vl)
    else vl := BEtoN(vl);
  end;
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: Single): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: Double
  ): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
end;

function TBlendBinReader.ReadPtr(const ofs: Integer; out vl: UInt64): Boolean;
var
  d : UInt32;
begin
  if fptr32 then begin
    Result := Read(ofs, d);
    vl := d;
  end else
    Result := Read(ofs, vl);
end;

function TBlendBinReader.ReadBuf(const ofs: Integer; var dst: array of byte;
  dstLen: Integer): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(dst[0], dstLen) = dstLen;
end;

function TBlendBinReader.SizeOfPtr: integer;
begin
  if fptr32 then Result := 4 else Result := 8;
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: Int32): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
  if Result then begin
    if fLitEnd then vl := LEtoN(vl)
    else vl := BEtoN(vl);
  end;
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: UInt32
  ): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
  if Result then begin
    if fLitEnd then vl := LEtoN(vl)
    else vl := BEtoN(vl);
  end;
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: Int64): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
  if Result then begin
    if fLitEnd then vl := LEtoN(vl)
    else vl := BEtoN(vl);
  end;
end;

function TBlendBinReader.Read(const ofs: Integer; out vl: UInt64
  ): Boolean;
begin
  fSource.Position := ofs + fOfs;
  Result := fSource.Read(vl, sizeof(vl)) = sizeof(vl);
  if Result then begin
    if fLitEnd then vl := LEtoN(vl)
    else vl := BEtoN(vl);
  end;
end;


{ TStringHash }

class function TStringHashCaseSensitive.hash(const key1: string; sz: Integer): SizeUInt;
var
  i : integer;
begin
  Result := 0;
  for i:=1 to length(key1) do
    Result := (Result shl 7) xor integer(key1[i]);
  Result := Result and (sz-1);
end;

class function TStringHashCaseSensitive.equal(const key1, key2: string): Boolean;
begin
  Result := key1 = key2;
end;

{ TBlendDNA }

type
  TNameReference = record
    ptr : TPointerModifier;
    arr : TArrayIndices;
    idx : Integer;
  end;

procedure TBlendDNA.PrepareDNA;
var
  i : integer;
  j : integer;
  cnt : integer;
  ofs : integer;
  ln  : integer;
  nm  : string;
  namesref : array of TNameReference;
  nmidx : Integer;
  k : integer;
begin
  SetLength(prepdna, dna.strcCount);
  SetLength(typetostr, dna.typesCount);
  FillDWord(typetostr[1], length(typetostr), $FFFFFFFF);
  SetLength(namesref, dna.namesCount);

  for i := 0 to dna.namesCount -1 do
  begin
    BlenderNameParse(dna.names[i], nm, namesref[i].ptr, namesref[i].arr );
    if not namehash.contains(nm) then begin
      namehash[nm] := i;
      namesref[i].idx := i;
    end else
      namesref[i].idx := namehash[nm];
  end;

  for i := 0 to dna.strcCount-1 do begin

    cnt := dna.strcs[i].fldsCount;
    SetLength(prepdna[i].field, cnt);
    ofs := 0;
    for j := 0 to cnt - 1 do begin
      prepdna[i].field[j].ofs := ofs;
      nmidx := dna.strcs[i].flds[j].idxName;

      if namesref[nmidx].ptr <> pmNone then
        ln := ptrSize
      else begin
        ln := dna.typesLen[ dna.strcs[i].flds[j].idxType ];
        if namesref[nmidx].arr.count > 0 then begin
          for k:=0 to namesref[nmidx].arr.count-1 do
            ln := ln * namesref[nmidx].arr.sizes[k];
        end;
      end;
      prepdna[i].field[j].size := ln;
      prepdna[i].field[j].nameidx := namesref[nmidx].idx;
      prepdna[i].field[j].ptrmod := namesref[nmidx].ptr;
      prepdna[i].field[j].arr := namesref[nmidx].arr;
      inc(ofs, ln);
    end;

    structhash[ dna.types[ dna.strcs[i].idxType ] ] := i;
    typetostr[ dna.strcs[i].idxType ] := i;
  end;
end;

constructor TBlendDNA.Create(aptrSize: integer);
begin
  inherited Create;
  ptrSize := aptrSize;
  namehash := TBlendDNANameHash.Create;
  structhash := TBlendDNANameHash.Create;
end;

destructor TBlendDNA.Destroy;
begin
  namehash.Free;
  structhash.Free;
  inherited Destroy;
end;

procedure TBlendDNA.SetDNA(const adna: TSDNA);
begin
  dna := adna;
  PrepareDNA;
end;

procedure TBlendDNA.SetDNA(const buf: array of byte; bufSize: Integer);
begin
  ParseSDNA(buf, bufSize, dna);
  PrepareDNA;
end;

function TBlendDNA.GetFieldSizeOfs(stidx: Integer; fieldidx: Integer;
  out fieldOfs, fieldSize: Integer): Boolean;
var
  fieldstidx: Integer;
begin
  Result := GetFieldSizeOfsStr(stidx, fieldidx, fieldOfs, fieldSize, fieldStIdx);
end;

function TBlendDNA.GetFieldSizeOfsStr(stidx: Integer; fieldidx: Integer;
  out fieldOfs, fieldSize, fieldStIdx: Integer): Boolean;
var
  tidx : integer;
begin
  Result := (stidx>=0) and (stidx < Length(prepdna))
    and (fieldidx >= 0) and (fieldidx < length(prepdna[stidx].field));
  if not Result then begin
    fieldOfs := 0;
    fieldSize := 0;
    fieldStIdx := -1;
  end else begin
    tidx := dna.strcs[stidx].flds[fieldidx].idxType;
    fieldOfs := prepdna[stidx].field[fieldidx].ofs;
    fieldSize := prepdna[stidx].field[fieldidx].size;
    fieldStIdx := typetostr[tidx];
  end;
end;

function TBlendDNA.GetFieldAttribs(stidx: Integer; fieldidx: Integer;
  out ptrmod: TPointerModifier; out arr: TArrayIndices): Boolean;
begin
  Result := (stidx>=0) and (stidx < Length(prepdna))
    and (fieldidx >= 0) and (fieldidx < length(prepdna[stidx].field));
  if not Result then begin
    ptrmod := pmNone;
    arr.count := 0;
  end else begin
    ptrmod := prepdna[stidx].field[fieldidx].ptrmod;
    arr := prepdna[stidx].field[fieldidx].arr;
  end;
end;

function TBlendDNA.StructIndex(const name: string): Integer;
begin
  if not structhash.GetValue(name, Result) then  Result := -1;
end;

function TBlendDNA.FieldIndex(structIdx: Integer; const fieldname: string): Integer;
var
  idx : integer;
  i   : integer;
begin
  Result := -1;
  if (structIdx<0) or (structIdx >= dna.strcCount) then Exit;
  idx := NameIndex(fieldName);
  if (idx < 0) then Exit;

  for i:= 0 to length(prepdna[structIdx].field)-1 do
    if prepdna[structIdx].field[i].nameidx = idx then begin
      Result := i;
      Exit;
    end;
end;

function TBlendDNA.FieldIndex(const structname, fieldname: string): Integer;
begin
  Result := FieldIndex ( StructIndex(structname), fieldname );
end;

function TBlendDNA.NameIndex(const name: string): Integer;
begin
  if not namehash.GetValue(name, REsult) then
    Result := -1;
end;

{ TBlendBlockMapCompare }

class function TBlendBlockMapCompare.c(addr1, addr2: Int64): Boolean;
begin
  Result := addr1 > addr2;
end;

{ TBlendBlock }

constructor TBlendBlock.Create(aheader: TFileBlock; aofs: Int64);
begin
  inherited Create;
  header := aheader;
  fileOfs := aofs;
end;

{ TBlend }

constructor TBlend.Create;
begin
  inherited Create;
  blocks := TBlendBlockList.Create; // of TBlendBlock
  blockmap := TBlendBlockMap.Create;
end;

destructor TBlend.Destroy;
var
  i : integer;
begin
  for i:=0 to blocks.Count-1 do TObject(blocks[i]).Free;
  blocks.Free;
  blockmap.Free;
  inherited Destroy;
end;

function TBlend.AddBlock(const header: TFileBlock; dataFileOfs: int64): TBlendBlock;
begin
  Result := TBlendBlock.Create(header, dataFileOfs);
  blocks.Add(Result);
  blockmap[header.memptr]:=Result;
end;

function TBlend.BlockAtMemPtr(const memptr: Int64): TBlendBlock;
begin
  if not blockmap.TryGetValue(memptr, Result) then
    Result := nil;
end;

end.
