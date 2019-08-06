unit blendertypesUtils;

{$mode delphi}{$H+}

interface

// Parser the blender name to a separate type description entities
// Such as, is type a pointer, or is type is an (fixed-size) array.
// i.e. *void - is a pointer
//      name[64] - is an array of 64-elements
// * normname - the name without any modifiers (*void -> void) (name[64] -> name)
// * isPoitner - true of false
// * maxArray = -1 - not an array, maxArray>=0 array of the size
// The function returns true, if succesfully parsed the name.
// False, if fails (array size is invalid)
function BlenderNameParse(const name: string; out normname: string; out isPointer: Boolean; out maxArray: Integer): Boolean;

implementation

function BlenderNameParse(const name: string; out normname: string; out isPointer: Boolean; out maxArray: Integer): Boolean;
var
  i : integer;
  j : integer;
  err : integer;
begin
  Result := false;
  normname := '';
  isPointer := false;
  maxArray := -1;

  i:=length(name);
  if (length(name)>0) and (name[length(name)]=']') then begin
    dec(i);
    j:=i;
    while (i>0) and (name[i] in ['0'..'9']) do dec(i);
    Val(Copy(name, i+1, j-i), maxArray, err);
    if (err>0) then Exit;
    if (i>0) and (name[i]='[') then dec(i);
  end;

  if Pos('*',name)=1 then begin
    normname := Copy(name, 2, i-1);
    isPointer := true;
  end else begin
    normname := Copy(name, 1, i);
    isPointer := false;
  end;
  Result := normname <> '';
end;

end.

