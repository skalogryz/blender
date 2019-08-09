unit BlenderStructSimpleRead;

interface

{$mode delphi}

uses
  BlenderStructSimple, BlenderReadUtils;

function ReadID(rdr: TBlendStructRead; dna: TBlendDNA; out id: TIDRec): Boolean;
function ReadIDAsSub(rdr: TBlendStructRead; dna: TBlendDNA; out id: TIDRec; const fieldName : string = 'id'): Boolean;

function ReadGlobal(rdr: TBlendStructRead; dna: TBlendDNA; out global: TFileGlobalRec): Boolean;

function ReadScene(rdr: TBlendStructRead; dna: TBlendDNA; out scene: TSceneRec): Boolean;

implementation

function ReadGlobal(rdr: TBlendStructRead; dna: TBlendDNA; out global: TFileGlobalRec): Boolean;
begin
//  rdr.SetSource(Source, b.fileOfs, dna, b.header.sdnaidx);
  Result :=
    rdr.ReadPtr('curscene', global.curscene);
end;

function ReadID(rdr: TBlendStructRead; dna: TBlendDNA; out id: TIDRec): Boolean;
begin
  Result :=
      rdr.ReadPtr('next', id.next)
  and rdr.ReadPtr('prev', id.prev)
  and rdr.ReadStr('name', id.name);
end;

function ReadIDAsSub(rdr: TBlendStructRead; dna: TBlendDNA; out id: TIDRec; const fieldName : string = 'id'): Boolean;
var
  fidx: integer;
  ofs: integer;
  len: integer;
  fidStdIdx: integer;
begin
  fidx := dna.FieldIndex(rdr.StructIdx,fieldName);
  Result := fidx>=0; // would be negative, if field doesn't present in the structure
  if not Result then Exit;

  Result := dna.GetFieldSizeOfsStr(rdr.StructIdx, fidx, ofs, len, fidStdIdx);
  if not Result then Exit;
  rdr.PushStruct(ofs, fidStdIdx, true);
  try
    Result := ReadID(rdr, dna, id);
  finally
    rdr.PopStruct;
  end;
end;

function ReadScene(rdr: TBlendStructRead; dna: TBlendDNA; out scene: TSceneRec): Boolean;
begin
  Result :=
    ReadIDAsSub(rdr, dna, scene.id);
end;

end.

