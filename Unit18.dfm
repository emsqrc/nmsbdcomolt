object Form18: TForm18
  Left = 362
  Top = 257
  BorderStyle = bsDialog
  ClientHeight = 247
  ClientWidth = 158
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
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 158
    Height = 247
    Align = alClient
    Columns = <
      item
        AutoSize = True
        Caption = 'Script'
      end>
    GridLines = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnClick = ListView1Click
  end
end
