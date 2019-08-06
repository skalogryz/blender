unit blenderTypesUtils;

{$mode delphi}{$H+}

interface

// Parser the blender name to a separate type description entities
// Such as, is type a pointer, or is type is an (fixed-size) array.
// i.e. *void - is a pointer
//      name[64] - is an array of 64-elements
// * normname - the name without any modifiers (*void -> void) (name[64] -> name)
// * isPoitner - true of false
// * arrSizes.count = 0 - not an array, maxArray>=0 array of the size
// The function returns true, if succesfully parsed the name.
// False, if fails (array size is invalid)
const
  MAX_ARRSIZE = 4;
type
  TArrayIndices = record
    count : Integer;
    sizes : array[0..MAX_ARRSIZE - 1] of integer;
  end;

// tood: add support for function pointers!
type
  TPointerModifier = (pmNone, pmPointer, pmDoublePointer, pmFuncRef);

function BlenderNameParse(const name: string; out normname: string; out isPointer: TPointerModifier; out arrSizes: TArrayIndices): Boolean;

implementation

function BlenderNameParse(const name: string; out normname: string; out isPointer: TPointerModifier; out arrSizes: TArrayIndices): Boolean;
var
  i : integer;
  j : integer;
  k   : integer;
  err : integer;
  idx : integer;
begin
  Result := false;
  normname := '';
  isPointer := pmNone;
  arrSizes.count := 0;

  //i:=length(name);
  i:=1;
  while (i<=length(name)) and (name[i]<>'[') do inc(i);

  if (i < length(name)) then begin
    k := i;
    while (i<length(name)) do begin
      inc(i); // [
      j:=i;
      while (i<length(name)) and (name[i] in ['0'..'9']) do inc(i);
      Val(Copy(name, j, i-j), idx, err);
      if (err > 0) then Exit;
      inc(i); // ]
      if arrSizes.count = length(arrSizes.sizes) then Exit;
      arrSizes.sizes[arrSizes.count]:=idx;
      inc(arrSizes.count);
    end;
    i := k;
  end else
    i := length(name);

  if (length(name)>0) and (name[length(name)]=']') then begin
    dec(i);
    j:=i;
    if (err>0) then Exit;
    if (i>0) and (name[i]='[') then dec(i);
  end;

  if (Pos('(',name)=1) and (Pos('*',name)=2) then begin
    i:=3;
    while (i<=length(name)) and (name[i]<>')') do inc(i);
    normname := Copy(name, 3, i-3);
    isPointer := pmFuncRef;
  end else if Pos('*',name)=1 then begin
    if (length(name)>1) and (name[2]='*') then begin
      normname := Copy(name, 3, i-2);
      isPointer := pmDoublePointer;
    end else begin
      normname := Copy(name, 2, i-1);
      isPointer := pmPointer;
    end;
  end else begin
    normname := Copy(name, 1, i);
    isPointer := pmNone;
  end;
  Result := normname <> '';
end;

end.

