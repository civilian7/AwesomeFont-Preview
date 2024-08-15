unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages,
  Winapi.GDIPAPI,
  Winapi.GDIPOBJ,
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    eFontNames: TComboBox;
    lbFontName: TLabel;
    eGroupbox: TGroupBox;
    eImage: TImage;
    eFontColor: TColorBox;
    lbFontColor: TLabel;
    lbAlphaValue: TLabel;
    eAlphaValue: TSpinEdit;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure eFontNamesChange(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    procedure Clear;
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  Smart.AwesomeFont;

{ TForm3 }

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.Clear;
var
  LBitmap: TBitmap;
begin
  LBitmap := TBitmap.Create;
  try
    LBitmap.SetSize(240, 240);
    LBitmap.Canvas.Brush.Color := clBtnFace;
    LBitmap.Canvas.FillRect(Rect(0, 0, 240, 240));

    eImage.Picture.Assign(LBitmap);
  finally
    LBitmap.Free;
  end;
end;

procedure TfrmMain.eFontNamesChange(Sender: TObject);
var
  LFontCode: WORD;
  R: TRect;
begin
  Clear;
  LFontCode := TFontAwesome.FindByName(eFontNames.Items[eFontNames.ItemIndex]);

  R := Rect(0, 0, 240, 240);
  TFontAwesome.Draw(eImage.Canvas, eFontColor.Selected, eAlphaValue.Value, R, 240, LFontCode);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  LFontNames: TStrings;
begin
  Clear;
  eFontColor.Selected := clBlack;
  LFontNames := TFontAwesome.GetFontNames;
  try
    eFontNames.Items.Assign(LFontNames);
  finally
    LFontNames.Free;
  end;
end;

end.
