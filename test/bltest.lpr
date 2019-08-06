program bltest;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  SysUtils, Classes, blenderfile;

procedure Run(const fn: string);
var
  rdr : TBlendReader;
  fs  : TfileStream;
begin
  fs := TfileStream.Create(fn, fmOpenRead or fmShareDenyNone);
  rdr := TBlendReader.Create;
  try
    if not rdr.FindFirst(fs) then begin
      writeln('unable to find. Probably in 2.8 format');
      Exit;
    end;
    writeln('Version:      ', rdr.ver);
    if rdr.isPtrLE then writeln('Little Endian')
    else writeln('Big Endian');
    writeln('Pointer size: ', rdr.PtrSize);

  finally
    rdr.Free;
    fs.Free;
  end;
end;

begin
  if ParamCOunt= 0 then begin
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

