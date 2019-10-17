object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'AwesomeFont Previewer'
  ClientHeight = 425
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbFontName: TLabel
    Left = 8
    Top = 11
    Width = 52
    Height = 13
    Caption = 'Font Name'
  end
  object lbFontColor: TLabel
    Left = 8
    Top = 39
    Width = 50
    Height = 13
    Caption = 'Font Color'
  end
  object lbAlphaValue: TLabel
    Left = 8
    Top = 68
    Width = 56
    Height = 13
    Caption = 'Alpha Value'
  end
  object eFontNames: TComboBox
    Left = 88
    Top = 8
    Width = 201
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = eFontNamesChange
  end
  object eGroupbox: TGroupBox
    Left = 8
    Top = 104
    Width = 281
    Height = 280
    Caption = 'Preview'
    TabOrder = 3
    object eImage: TImage
      Left = 21
      Top = 26
      Width = 240
      Height = 240
    end
  end
  object eFontColor: TColorBox
    Left = 88
    Top = 36
    Width = 201
    Height = 22
    TabOrder = 1
  end
  object eAlphaValue: TSpinEdit
    Left = 88
    Top = 65
    Width = 201
    Height = 22
    MaxValue = 255
    MinValue = 0
    TabOrder = 2
    Value = 255
  end
  object btnClose: TButton
    Left = 214
    Top = 391
    Width = 75
    Height = 25
    Caption = '&Close'
    TabOrder = 4
    OnClick = btnCloseClick
  end
end
