program prod_ddt;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, rxnew, zcomponent, main, dm, helps
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFd, Fd);
  Application.CreateForm(TFel, Fel);
  Application.Run;
end.

