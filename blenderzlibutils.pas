unit BlenderZlibUtils;

interface

{$define usepaszlib}

uses
  Classes
  {$ifdef usepaszlib}
  ,zbase,paszlib
  {$else}
  ,zlib
  {$endif}
  ;

procedure InflateStream(src, dst: TStream);

implementation

procedure InflateStream(src, dst: TStream);
var
  ss     : z_stream;
  buf    : array of byte;
  outbuf : array of byte;
  done   : Boolean;
  err    : integer;
begin
  if not Assigned(src) or not Assigned(dst) then Exit;

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


end.
