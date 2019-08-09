unit BlenderStructSimple;

interface
{$mode delphi}

uses
  BlenderFile;

type
  TIDRec = packed record
    next : TBlenderPtr;
    prev : TBlenderPtr;
    name : string;
    {ID = packed record
        next       : Pvoid;
        prev       : Pvoid;
        newid      : PID;
        lib        : PLibrary;
        name       : array [0..65] of char;
        flag       : short;
        tag        : short;
        pad_s1     : short;
        us         : int;
        icon_id    : int;
        properties : PIDProperty;
      end;}
  end;

  TSceneRec = packed record
    id   : TIDRec;
  end;

  TFileGlobalRec = packed record
    curscene : TBlenderPtr;
  end;

implementation

end.

