program AwesomeFontPreview;

uses
  Vcl.Forms,
  Smart.AwesomeFont in 'Smart.AwesomeFont.pas',
  uMain in 'uMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
