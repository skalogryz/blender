program bltest;

{$mode objfpc}{$H+}

{$define usepaszlib}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  SysUtils, Classes, blenderfile
  {$ifdef usepaszlib}
  ,zbase,paszlib
  {$else}
  , zlib
  {$endif}
  ;

procedure InflateStream(src, dst: TStream);
var
  ss     : z_stream;
  buf    : array of byte;
  outbuf : array of byte;
  done   : Boolean;
  err    : integer;
begin
  SetLength(buf, 1024 * 64);
  setLength(outbuf, 1024 * 64 * 4);
  fillchar(ss, sizeof(sS), 0);
  done := false;
  inflateInit2(ss, -15);
  try
    ss.next_out := @outbuf[0];
    ss.avail_out := length(outbuf);
    ss.next_in:=@buf[0];
    ss.avail_in := src.Read(buf[0], length(buf));

    while not done do begin
      err := inflate(ss, Z_SYNC_FLUSH);
      if (ss.avail_in = 0) then begin
        ss.next_in:=@buf[0];
        ss.avail_in := src.Read(buf[0], length(buf));
      end;
      if err = Z_STREAM_END then begin
        done := true;
      end else if (err = 0) then begin
        if ss.avail_out=0 then begin
          dst.Write(outbuf[0], length(outbuf) - ss.avail_out);
          ss.next_out := @outbuf[0];
          ss.avail_out := length(outbuf);
        end;
      end else begin
        break;
      end;
      if ss.avail_in = 0 then begin
        // end of buffer
        inflateEnd(ss);
        done:=true;
        if ss.avail_out>0 then
          dst.Write(outbuf[0], length(outbuf) - ss.avail_out);
      end;
    end;
    dst.Position := 0;
  finally
    inflateEnd(ss);
  end;
end;

procedure Run(const fn: string);
var
  rdr : TBlendReader;
  fs  : TfileStream;
  buf : array [0..9] of byte;
  src : TStream;
  dmem : TMemoryStream;
begin
  fs := TfileStream.Create(fn, fmOpenRead or fmShareDenyNone);
  rdr := TBlendReader.Create;
  dmem := nil;
  try
    if fs.Read(buf, sizeof(buf))<>sizeof(buf) then begin
      writeln('file is too short');
      Exit;
    end;
    if (buf[0]=$1f) and (buf[1]=$8b) then begin
      writeln('2.8 or later format. Inflating');
      // it's 2.8 file
      //smem := TMemoryStream.Create;
      dmem := TMemoryStream.Create;
      InflateStream(fs, dmem);
      writeln('unpackedsize = ', dmem.Size,' packed size = ', fs.Size);
      src:=dmem;
    end else begin
      fs.Position:=0; // let's get back to the start and read it as plain file
      src := fs;
    end;

    if not rdr.FindFirst(src) then begin
      writeln('unable to find. Probably in 2.8 format');
      Exit;
    end;
    writeln('Version:      ', rdr.ver);
    if rdr.isPtrLE then writeln('Little Endian')
    else writeln('Big Endian');
    writeln('Pointer size: ', rdr.PtrSize);

  finally
    dmem.Free;
    rdr.Free;
    fs.Free;
  end;
end;

begin
  writeln(sizeof(Pointer));
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

