program blstruct;

{$mode objfpc}{$H+}

{$define usepaszlib}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  SysUtils, Classes, blenderfile, BlenderZlibUtils, BlenderTypesUtils
  ,BlenderClasses
  ;

procedure DumpBlocks(bld: TBlend);
var
  i : integer;
  b : TBlendBlock;
  tp : integer;
  j  : integer;
begin
  for i:=0 to bld.blocks.Count-1 do begin
    b := bld.blocks[i];
    j := b.header.sdnaidx;
    tp := bld.dna.strcs[ j ].idxType;
    writeln(b.header.code:4,' ', b.header.count,' of ',b.header.size:6,' (', bld.dna.typesLen[tp]*b.header.count:6,') ', bld.dna.types[tp],' Id =',b.header.memptr );
  end;
end;

procedure DumpScene(bld: TBlend; Source: TStream);
var
  dna : TBlendDNA;
  rdr : TBlendStructRead;
  i   : Integer;
  b   : TBlendBlock;

  ptr : Uint64;
begin
  dna := TBlendDNA.Create(bld.ptrSize);
  rdr := TBlendStructRead.Create(bld.isLittleEnd, bld.ptrSize = 4);
  try
    dna.SetDNA(bld.dna);
    for i:=0 to bld.blocks.Count - 1 do begin
      b := bld.blocks[i];
      if (b.header.code = BLOCK_GLOBAL) then begin
        rdr.SetSource(Source, b.fileOfs, dna, b.header.sdnaidx);
        if not rdr.ReadPtr('curscene', ptr) then begin
          writeln('missing a critical field?');
          Exit;
        end;
        writeln('ptr = ', ptr);

        b := bld.BlockAtMemPtr(ptr);
        if Assigned(b) then
        begin
          writeln( b.header.code,' ',PtRUInt(b));
        end;
        break;
      end;
    end;
  finally
    dna.Free;
    rdr.Free;
  end;
end;

procedure Run(const fn: string);
var
  fs  : TFileStream;
  src : TStream;
  dmem : TMemoryStream;
  bld  : TBlend;
  sz   : integer;
  i    : integer;
begin
  fs := TfileStream.Create(fn, fmOpenRead or fmShareDenyNone);
  bld := TBlend.Create;
  dmem := nil;
  try
    if isPacked(fs, sz) then begin
      fs.Position:=fs.Position+sz;
      dmem := TMemoryStream.Create;
      InflateStream(fs, dmem);
      src:=dmem;
    end else begin
      src := fs;
    end;

    if not ReadFromStream(bld, src) then begin
      writeln('failed');
      Exit;
    end;
    DumpBlocks(bld);

    DumpScene(bld, src);

  finally
    dmem.Free;
    fs.Free;
  end;
end;

begin
  if ParamCount= 0 then begin
    writelN('please specify .blender file name');
    Exit;
  end;
  try
    Run(ParamStr(1));
  except
    on e:exception do
      writeln(stderr, e.message);
  end;
end.


