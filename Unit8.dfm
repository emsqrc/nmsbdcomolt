object Form8: TForm8
  Left = 492
  Top = 345
  BorderStyle = bsDialog
  Caption = 'TFTP IP - '#1072#1076#1088#1077#1089
  ClientHeight = 82
  ClientWidth = 208
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 193
    Height = 24
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0.0.0.0'
  end
  object Button1: TButton
    Left = 120
    Top = 48
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
