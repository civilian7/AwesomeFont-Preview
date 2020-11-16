object TwinsDialog: TTwinsDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #45796#46181#51060' '#51077#47141
  ClientHeight = 219
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 12
  object cbType: TRadioGroup
    Left = 16
    Top = 16
    Width = 313
    Height = 81
    Caption = #44396#48516
    ItemIndex = 0
    Items.Strings = (
      #51068#46976#49457
      #51060#46976#49457)
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 104
    Width = 313
    Height = 57
    Caption = #51064#50896
    TabOrder = 1
    object seCount: TSpinEdit
      Left = 32
      Top = 24
      Width = 121
      Height = 21
      MaxValue = 5
      MinValue = 2
      TabOrder = 0
      Value = 2
    end
  end
  object Button1: TButton
    Left = 173
    Top = 176
    Width = 75
    Height = 25
    Caption = #54869#51064
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 254
    Top = 176
    Width = 75
    Height = 25
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 3
  end
end
