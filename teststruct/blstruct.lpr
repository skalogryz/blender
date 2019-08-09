program blstruct;

{$mode objfpc}{$H+}

{$define usepaszlib}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  SysUtils, Classes, blenderfile, BlenderZlibUtils, BlenderTypesUtils
  ,BlenderReadUtils, BlenderStructSimple, BlenderStructSimpleRead
  ,gset;

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
    writeln(b.header.code:4,' ', b.header.count,' of ',b.header.size:6,' (', bld.dna.typesLen[tp]*b.header.count:6,') ', bld.dna.types[tp],'; Id =',b.header.memptr );
  end;
end;

type

  { TUInt64Compare }

  TUInt64Compare = class(TObject)
    class function c(a1,a2:UInt64): Boolean;
  end;

  TUInt64Track = specialize TSet<UInt64, TUInt64Compare>;


procedure DumpRef(bld: TBlend; rdr: TBlendStructRead; dna: TBlendDNA; vis: TUInt64Track; const prefix: string = '');
var
  ptr : TPointerModifier;
  arr : TArrayIndices;
  i   : Integer;
  ofs : Integer;
  sz  : Integer;
  flidx : Integer;
  p   : TBlenderPtr;
  b   : TBlendBlock;
begin
  writeln(prefix, bld.dna.types[ bld.dna.strcs[rdr.StructIdx].idxType ] );
  for i:=0 to dna.dna.strcs[rdr.StructIdx].fldsCount-1 do begin
    dna.GetFieldSizeOfsStr(rdr.StructIdx, i, ofs, sz, flidx);
    dna.GetFieldAttribs(rdr.StructIdx, i, ptr, arr);
    if (ptr = pmPointer) then begin
      rdr.BinReader.ReadPtr(ofs, p);
      if not Assigned(vis.NFind(ofs)) then
      begin
        vis.Insert(ofs);
        b := bld.BlockAtMemPtr(p);
        if Assigned(b) then begin
          rdr.PushStruct(b.fileOfs, b.header.sdnaidx, false);
          DumpRef(bld, rdr, dna, vis, prefix+'  ');
          rdr.PopStruct;
        end;
      end;
    end;
  end;
end;

procedure DumpScene(bld: TBlend; Source: TStream);
var
  dna : TBlendDNA;
  rdr : TBlendStructRead;
  i   : Integer;
  b   : TBlendBlock;

  ptr : Uint64;
  glb : TFileGlobalRec;
  id  : TIDRec;
  sc  : TSceneRec;
  vis : TUInt64Track;
begin
  dna := TBlendDNA.Create(bld.ptrSize);
  rdr := TBlendStructRead.Create(bld.isLittleEnd, bld.ptrSize = 4);
  try
    dna.SetDNA(bld.dna);
    for i:=0 to bld.blocks.Count - 1 do begin
      b := bld.blocks[i];
      if (b.header.code = BLOCK_GLOBAL) then begin
        rdr.SetSource(Source, b.fileOfs, dna, b.header.sdnaidx);

        vis := TUInt64Track.Create;
        DumpRef(bld, rdr, dna, vis);
        vis.Free;

        rdr.SetSource(Source, b.fileOfs, dna, b.header.sdnaidx);
        ReadGlobal(rdr, dna, glb);



        {if not rdr.ReadPtr('curscene', ptr) then begin
          writeln('missing a critical field?');
          Exit;
        end;
        writeln('ptr = ', ptr);}

        b := bld.BlockAtMemPtr(glb.curscene);
        rdr.SetSource(Source, b.fileOfs, dna, b.header.sdnaidx);
        writeln('b = ', b.header.code);
        writeln('scene = ', ReadScene(rdr, dna, sc));
        {writeln('code = ', b.header.code);
        if Assigned(b) then begin}
          //writeln('fileOfs = ', b.fileOfs);
          //writeln('suc: ', ReadID(rdr, dna, id));
          writeln('next: ', sc.id.next);
          writeln('prev: ', sc.id.prev);
          writeln('name(id): ', sc.id.name);
        {end;}


        {b := bld.BlockAtMemPtr(ptr);
        if Assigned(b) then
        begin
          writeln( b.header.code,' ',PtRUInt(b));
        end;}
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

{ TUInt64Compare }

class function TUInt64Compare.c(a1, a2: UInt64): Boolean;
begin
  Result := a1 > a2;
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


