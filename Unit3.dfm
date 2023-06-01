object Form3: TForm3
  Left = 452
  Top = 360
  BorderStyle = bsDialog
  Caption = 'Telnet'
  ClientHeight = 113
  ClientWidth = 249
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
    Width = 233
    Height = 24
    TabOrder = 0
    Text = 'USER'
  end
  object Edit2: TEdit
    Left = 8
    Top = 48
    Width = 233
    Height = 24
    PasswordChar = '*'
    TabOrder = 1
    Text = 'PASS'
  end
  object Button1: TButton
    Left = 160
    Top = 80
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
end
