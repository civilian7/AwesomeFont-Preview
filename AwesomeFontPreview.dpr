program AwesomeFontPreview;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {frmMain},
  Smart.AwesomeFont in 'Smart.AwesomeFont.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
