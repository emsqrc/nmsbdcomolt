object Form1: TForm1
  Left = 421
  Top = 324
  Width = 1043
  Height = 605
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 505
    Width = 1027
    Height = 8
    Align = alBottom
    Min = 0
    Max = 1000
    Step = 1
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 528
    Width = 1027
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 300
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = 'v2.49'
        Width = 50
      end>
    ParentColor = True
    SimplePanel = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1027
    Height = 505
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabIndex = 0
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'OLT'
      object Label1: TLabel
        Left = 0
        Top = 458
        Width = 1019
        Height = 16
        Align = alBottom
        BiDiMode = bdLeftToRight
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object ListView1: TListView
        Left = 0
        Top = 0
        Width = 1019
        Height = 458
        Align = alClient
        Columns = <
          item
            AutoSize = True
            Caption = 'ip - '#1072#1076#1088#1077#1089#1072
          end
          item
            AutoSize = True
            Caption = #1053#1072#1079#1074#1072
          end
          item
            AutoSize = True
            Caption = #1042#1080#1088#1086#1073#1085#1080#1082
          end
          item
            AutoSize = True
            Caption = #1052#1086#1076#1077#1083#1100
          end
          item
            AutoSize = True
            Caption = 'firmware'
          end
          item
            AutoSize = True
            Caption = 'hardware'
          end
          item
            AutoSize = True
            Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
          end
          item
            AutoSize = True
            Caption = 'cpu %'
          end
          item
            AutoSize = True
            Caption = #1054#1085#1083#1072#1081#1085' / '#1086#1092#1083#1072#1081#1085' ONU'
          end
          item
            AutoSize = True
            Caption = #1047#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1086' ONU'
          end>
        GridLines = True
        LargeImages = ImageList1
        ReadOnly = True
        RowSelect = True
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = False
        SmallImages = ImageList1
        SortType = stData
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = ListView1Change
        OnClick = ListView1Click
        OnColumnClick = ListView1ColumnClick
        OnCompare = ListView1Compare
        OnCustomDrawItem = ListView1CustomDrawItem
        OnDblClick = ListView1DblClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'EPON'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = False
      object Label2: TLabel
        Left = 0
        Top = 458
        Width = 4
        Height = 16
        Align = alBottom
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ListView2: TListView
        Left = 0
        Top = 163
        Width = 1019
        Height = 295
        Align = alBottom
        Columns = <
          item
            AutoSize = True
            Caption = #1053#1072#1079#1074#1072
          end
          item
            AutoSize = True
            Caption = 'Tx  (dbm)'
          end
          item
            AutoSize = True
            Caption = 'Rx  (dbm)'
          end
          item
            AutoSize = True
            Caption = #1042#1110#1076#1089#1090#1072#1085#1100'  ('#1084')'
          end
          item
            AutoSize = True
            Caption = #1063#1072#1089' '#1088#1086#1073#1086#1090#1080
          end
          item
            AutoSize = True
            Caption = #1042#1080#1088#1086#1073#1085#1080#1082
          end
          item
            AutoSize = True
            Caption = #1052#1086#1076#1077#1083#1100
          end
          item
            AutoSize = True
            Caption = 'vlan'
          end
          item
            AutoSize = True
            Caption = 'MAC'
          end
          item
            AutoSize = True
            Caption = #1042#1077#1088#1089#1110#1103
          end
          item
            AutoSize = True
            Caption = #1057#1090#1072#1090#1091#1089
          end>
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        GridLines = True
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu2
        ShowHint = False
        SmallImages = ImageList1
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = ListView2Change
        OnClick = ListView2Click
        OnColumnClick = ListView2ColumnClick
        OnColumnRightClick = ListView2ColumnRightClick
        OnCompare = ListView2Compare
        OnCustomDrawItem = ListView2CustomDrawItem
        OnCustomDrawSubItem = ListView2CustomDrawSubItem
        OnDblClick = ListView2DblClick
      end
      object GroupBox1: TGroupBox
        Left = 780
        Top = 0
        Width = 239
        Height = 123
        Align = alRight
        Caption = #1060#1110#1083#1100#1090#1088
        Ctl3D = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 5
          Top = 26
          Width = 54
          Height = 16
          Caption = #1052#1086#1076#1077#1083#1100' -'
        end
        object Label4: TLabel
          Left = 23
          Top = 52
          Width = 39
          Height = 16
          Caption = 'MAC - '
        end
        object Label5: TLabel
          Left = 5
          Top = 122
          Width = 58
          Height = 16
          Caption = #1052#1086#1076#1077#1083#1100' - '
          Visible = False
        end
        object Label6: TLabel
          Left = 16
          Top = 80
          Width = 41
          Height = 16
          Caption = #1055#1086#1088#1090' - '
        end
        object ComboBox2: TComboBox
          Left = 64
          Top = 24
          Width = 169
          Height = 24
          ItemHeight = 0
          TabOrder = 0
          OnChange = ComboBox2Change
        end
        object Edit1: TEdit
          Left = 64
          Top = 50
          Width = 137
          Height = 24
          TabOrder = 1
          OnChange = Edit1Change
        end
        object Button5: TButton
          Left = 200
          Top = 48
          Width = 33
          Height = 27
          Caption = '>>'
          TabOrder = 2
          OnClick = Button5Click
        end
        object Edit2: TEdit
          Left = 64
          Top = 120
          Width = 137
          Height = 24
          TabOrder = 3
          Visible = False
        end
        object Button8: TButton
          Left = 200
          Top = 74
          Width = 33
          Height = 27
          Caption = '>>'
          TabOrder = 4
          OnClick = Button8Click
        end
        object Edit3: TEdit
          Left = 64
          Top = 76
          Width = 137
          Height = 24
          TabOrder = 5
          OnChange = Edit3Change
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 123
        Width = 1019
        Height = 40
        Align = alBottom
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Button1: TButton
          Left = 8
          Top = 10
          Width = 137
          Height = 25
          Caption = #1054#1089#1085#1086#1074#1085#1072' '#1110#1085#1092#1086#1088#1084#1072#1094#1110#1103' '
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button7: TButton
          Left = 152
          Top = 10
          Width = 97
          Height = 25
          Caption = #1057#1080#1075#1085#1072#1083#1080
          TabOrder = 1
          OnClick = Button7Click
        end
        object Button4: TButton
          Left = 256
          Top = 10
          Width = 99
          Height = 25
          Caption = #1047#1072#1073#1083#1086#1082#1086#1074#1072#1085#1110' '
          TabOrder = 2
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 363
          Top = 10
          Width = 190
          Height = 25
          Caption = #1054#1085#1086#1074#1080#1090#1080' '#1087#1088#1086#1096#1080#1074#1082#1091' '#1074#1080#1076#1110#1083#1077#1085#1080#1093' '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button6Click
        end
        object BitBtn1: TBitBtn
          Left = 560
          Top = 10
          Width = 25
          Height = 22
          Hint = #1045#1082#1089#1087#1086#1088#1090#1091#1074#1072#1090#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn1Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFAFAF9C2BBACC4BDAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAF
            C5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC3BBADD3CEC3FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF92856A81725383745683745683745683745683745683
            7456837456837456837456837456837456837456837456837456837456837456
            786847D3CEC3FFFFFFFFFFFFFFFFFFFFFFFF897A5D8B7D608B7D608374568374
            5683745683745683745683745683745683745683745683745683745683745683
            745687785B8B7D60837456C3BBADFFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D60
            837456CCC6B9C5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BE
            AFC5BEAFC5BEAFC8C2B4A89D8887785B837456C5BEB0FFFFFFFFFFFFFFFFFFFF
            FFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C2B5837456837456C5BEB0FFFF
            FFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5BEB0837456
            837456C5BEB0FFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFC5BEB0837456837456C5BEB0FFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D60
            7C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC5BEB0837456837456C5BEB0FFFFFFFFFFFFFFFFFFFF
            FFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1B9AA7B6B4B7B6B4BC1B9AAFFFF
            FFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFAD2A1FE
            F8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E2DCC8C1B4
            C8C1B4E5E2DCFFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFF
            FFFFFFFFF07E00F5A746FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D60
            7C6C4CFFFFFFFFFFFFFFFFFFF3941EF18906FAD9AFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFAD5A7F18703FDEEDCFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFF6B15BF29117F18804FAD6A9
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C98CF28D0FF18702F9CA8FFFFF
            FFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFBE2C3F1
            8A08F29520F18B0AF4A43EFBE0BDFFFFFFFFFFFFFFFFFFFFFFFFF9D19DF28F13
            F29520F18C0BF4A643FFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFF
            FFFFFFFFFFFFFFF39E32F29219F39621F2931AF28D0FF18A08F18805F18805F1
            8805F28F13F39621F39621F39621F29117F28F12FDEEDCFFFFFF8B7D608B7D60
            7C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFEFDFBF18A09F2931CF39621F39621F396
            21F39621F39621F39621F39621F39621F39621F39621F39621F2941EF18701F9
            D19F8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6EDF28F13
            F28F12F2951FF39621F39621F39621F39621F39621F39621F39621F39621F396
            21F39621F29016F2941E8A7C5F8B7D608B7D607C6C4C7C6C4C7C6C4C756442BD
            B5A6FFFFFFFFFFFFF7BE75F18A07F18C0CF28E11F28F13F28F13F2921AF39621
            F39621F39621F29520F18C0BF4A643FFFFFF86785A8A7C5F8B7D608B7D608B7D
            608B7D60837456C5BEB0FFFFFFFFFFFFFFFFFFFFFFFFFBE3C4F9CF99F8CA8FF9
            CD96F6B058F2921AF39621F2941EF18702F9CA8FFFFFFFFFFFFFC5BEB0786847
            7C6C4B7C6C4C7C6C4C7C6C4C756442BDB5A6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF9CE96F28F13F29117F28F12FDEEDCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C687F08300F4A643FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF5EBF9D09B
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object ListView3: TListView
        Left = 0
        Top = 0
        Width = 780
        Height = 123
        Align = alClient
        Columns = <
          item
            AutoSize = True
            Caption = #1053#1072#1079#1074#1072
          end
          item
            AutoSize = True
            Caption = #1054#1085#1083#1072#1081#1085'/'#1086#1092#1083#1072#1081#1085'  ONU'
          end
          item
            AutoSize = True
            Caption = #1047#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1086' ONU'
          end
          item
            AutoSize = True
            Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' (C)'
          end>
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatScrollBars = True
        GridLines = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        PopupMenu = PopupMenu5
        SortType = stData
        TabOrder = 3
        ViewStyle = vsReport
        OnClick = ListView3Click
        OnColumnClick = ListView3ColumnClick
        OnCompare = ListView3Compare
        OnCustomDrawItem = ListView3CustomDrawItem
        OnCustomDrawSubItem = ListView3CustomDrawSubItem
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1073#1072#1079#1110' '#1076#1072#1085#1080#1093' (ONU)'
      ImageIndex = 2
      object Label7: TLabel
        Left = 0
        Top = 458
        Width = 1019
        Height = 16
        Align = alBottom
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1019
        Height = 49
        Align = alTop
        TabOrder = 0
        object ComboBox1: TComboBox
          Left = 16
          Top = 16
          Width = 145
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          Items.Strings = (
            'name'
            'tx'
            'rx'
            'distance'
            'time'
            'vendor'
            'model'
            'vlan'
            'mac'
            'version'
            'status'
            'datetime'
            'ip'
            'ifindex')
        end
        object ComboBox3: TComboBox
          Left = 168
          Top = 16
          Width = 57
          Height = 24
          ItemHeight = 16
          TabOrder = 1
          Text = '~'
          Items.Strings = (
            '~'
            '='
            '!='
            '!~')
        end
        object Edit4: TEdit
          Left = 232
          Top = 16
          Width = 161
          Height = 24
          TabOrder = 2
        end
        object Button2: TButton
          Left = 400
          Top = 15
          Width = 33
          Height = 25
          Caption = '>>'
          TabOrder = 3
          OnClick = Button2Click
        end
        object BitBtn2: TBitBtn
          Left = 496
          Top = 16
          Width = 25
          Height = 22
          Hint = #1045#1082#1089#1087#1086#1088#1090#1091#1074#1072#1090#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFAFAF9C2BBACC4BDAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAF
            C5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC3BBADD3CEC3FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF92856A81725383745683745683745683745683745683
            7456837456837456837456837456837456837456837456837456837456837456
            786847D3CEC3FFFFFFFFFFFFFFFFFFFFFFFF897A5D8B7D608B7D608374568374
            5683745683745683745683745683745683745683745683745683745683745683
            745687785B8B7D60837456C3BBADFFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D60
            837456CCC6B9C5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BEAFC5BE
            AFC5BEAFC5BEAFC8C2B4A89D8887785B837456C5BEB0FFFFFFFFFFFFFFFFFFFF
            FFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C2B5837456837456C5BEB0FFFF
            FFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5BEB0837456
            837456C5BEB0FFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFC5BEB0837456837456C5BEB0FFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D60
            7C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC5BEB0837456837456C5BEB0FFFFFFFFFFFFFFFFFFFF
            FFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1B9AA7B6B4B7B6B4BC1B9AAFFFF
            FFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFAD2A1FE
            F8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E2DCC8C1B4
            C8C1B4E5E2DCFFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFF
            FFFFFFFFF07E00F5A746FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B7D608B7D60
            7C6C4CFFFFFFFFFFFFFFFFFFF3941EF18906FAD9AFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFAD5A7F18703FDEEDCFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFF6B15BF29117F18804FAD6A9
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C98CF28D0FF18702F9CA8FFFFF
            FFFFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFBE2C3F1
            8A08F29520F18B0AF4A43EFBE0BDFFFFFFFFFFFFFFFFFFFFFFFFF9D19DF28F13
            F29520F18C0BF4A643FFFFFFFFFFFFFFFFFF8B7D608B7D607C6C4CFFFFFFFFFF
            FFFFFFFFFFFFFFF39E32F29219F39621F2931AF28D0FF18A08F18805F18805F1
            8805F28F13F39621F39621F39621F29117F28F12FDEEDCFFFFFF8B7D608B7D60
            7C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFEFDFBF18A09F2931CF39621F39621F396
            21F39621F39621F39621F39621F39621F39621F39621F39621F2941EF18701F9
            D19F8B7D608B7D607C6C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6EDF28F13
            F28F12F2951FF39621F39621F39621F39621F39621F39621F39621F39621F396
            21F39621F29016F2941E8A7C5F8B7D608B7D607C6C4C7C6C4C7C6C4C756442BD
            B5A6FFFFFFFFFFFFF7BE75F18A07F18C0CF28E11F28F13F28F13F2921AF39621
            F39621F39621F29520F18C0BF4A643FFFFFF86785A8A7C5F8B7D608B7D608B7D
            608B7D60837456C5BEB0FFFFFFFFFFFFFFFFFFFFFFFFFBE3C4F9CF99F8CA8FF9
            CD96F6B058F2921AF39621F2941EF18702F9CA8FFFFFFFFFFFFFC5BEB0786847
            7C6C4B7C6C4C7C6C4C7C6C4C756442BDB5A6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF9CE96F28F13F29117F28F12FDEEDCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C687F08300F4A643FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF5EBF9D09B
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object BitBtn3: TBitBtn
          Left = 456
          Top = 16
          Width = 25
          Height = 25
          Hint = #1055#1086#1096#1091#1082' '#1076#1091#1073#1083#1110#1074' MAC '#1072#1076#1088#1077#1089
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BitBtn3Click
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
            FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
            FFFFFFD7D6D2BDBBB5C1BFB9C1BFB9C1BFB9C1BFB9C1BFB9C1BFB9C1BFB9C1BF
            B9C1BFB9C1BFB9C1BFB9BFBDB8C8C6C1F9F9F8FFFFFFFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFF
            D7D6D24945374845374945374A46374A46374A46374A46374A46374A46374A46
            374A46374A46374A46374B483A484537A09D95FFFFFFFCFCFCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFF
            C0BEB84845374D4A3C4545394244394244394244394244394244394244394244
            394244394244394344394C4A3C484537838076FFFFFFFAFAFAFCFCFCFCFCFCFC
            FCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFCFCFCFFFFFF
            C2C0BA494537454539805837A264379C62379D62379D62379D62379D62379D62
            379D62379E6337976037514A3A464437868278FFFFFFFDFDFDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFCFCFCFFFFFF
            C1BFB94A4637424439A26437D97737CE7337D07437D07437D07437D07437D074
            37CF7437D27537C77137534939454437706C61C7C5C0BFBDB8C1BEB9C1BEB9C1
            BEB9C1BEB9C1BEB9C1BFBABDBCB6D7D6D2FFFFFFFEFEFEFFFFFFFCFCFCFFFFFF
            C1BFB94A46374244399C6237CE7337C47037C67037C67037C67037C67037C670
            37C67037C87137BE6E375148374644374945374A46374A46374A46374A46374A
            46374A46374A4637494537484537494537D7D6D2FFFFFFFDFDFDFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137C87137C87137C87137C871
            37C77137CA7237C06E3751483746443747453843453A42443942443942443942
            44394244394244394545394D4A3C484537C0BEB8FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137C87137C87137C87137C871
            37C77137CA7237C06E37524937404237654F37A264379C62379D62379D62379D
            62379C6237A26437815837454539494537C2C0BAFFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137C87137C87137C87137C871
            37C77137CA7237C06E375349373D4137765537D87737CE7337D07437D07437D0
            7437CE7337D97737A364374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137C87137C87137C87137C871
            37C77137CA7237C06E375349373E4137735437CE7337C57037C67037C67037C6
            7037C47037CE73379C62374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137C87137C87137C87137C871
            37C77137CA7237C06E375349373E4137735437D07437C67037C87137C87137C8
            7137C67037D074379D62374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137C87137C87137C77137C771
            37C77137CA7237BF6E375349373E4137735437D07437C67037C87137C87137C8
            7137C67037D074379D62374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137C77137C97137CA7237CA72
            37CA7237CD7337C26F375349373E4137735437D07437C67037C87137C87137C8
            7137C67037D074379D62374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C67037C87137CC7337C36F37BE6E37BF6E
            37BE6E37C16F37B76B375248373E4137745437D07437C67037C87137C87137C8
            7137C67037D074379D62374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C57037CE73379E63384F48375148375349
            385249385148375048374A4637414237725438CF7437C67037C87137C87137C8
            7137C67037D074379D62374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C47037D074377053383C41374845373C3E
            323D3E324644374644374B46373C4137785638D17437C67037C77137C77137C7
            7137C67037CF74379D62374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C57037D074377555384042374D47387B67
            527966514845374A4637424337574B38BB6D38CA7237C77137CA7237CA7237CA
            7237C87137D375379F63374244394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399D6237D07437C47037D074377455383C4035574E3EDEAA
            877F6A54434134454438574B38BB6D38CE7337C87137CB7237BF6E37BF6E37BF
            6E37BD6D37C670379760374345394A4637C1BFB9FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A46374244399C6237CE7337C36F37CE73377355383D4035564E3E6B5C
            493D3D31494638494637B46A38CF7337C57037CB72377B57384C463752493753
            4A385149385148374E47374A483A494537C0BDB8FFFFFFFCFCFCFCFCFCFFFFFF
            C1BFB94A4637424439A26437D97737CC7237D877377656384042374945364442
            364B4739454437514837C16E37C97137CA7237C06E374C47374444374443353A
            3C314141344645374644374C493B484537CBC9C4FFFFFFFCFCFCFCFCFCFFFFFF
            C2C0BA494537454539805837A264379B6137A26437654F384343374B47394A47
            39484537464437504837BE6E37CA7237CA7237BF6E37534938434235584F3F86
            6F586659474543354D4A3B4845378D8980FFFFFFFFFFFFFEFEFEFCFCFCFFFFFF
            C0BEB84845374D4A3C45453942443942443942443948473A4C493B4745376663
            576F6B5E464437524939BF6E37CA7237CA7237C06E37534A383A3C31866F58D8
            A68458503F4947394946378A877DFFFFFFFFFFFFFEFEFEFFFFFFFDFDFDFFFFFF
            D7D6D24945374845374945374A46374A46374A46374A4638484537595548ECEB
            E98B877E464437544B3ABD6D37C87137C87137BE6E3752493840413467594758
            504042423649463888857BFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
            FFFFFFD8D7D3BEBCB7C2C0BBC1BFBAC1BFBAC2C0BBC2BFBAC0BEB8E8E7E5FFFF
            FF848076464437534A39C77137D27437D27437C7713751483746453745433549
            473949463887847AFFFEFEFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFF
            FF878379464437514A3A9760379E63379E63379760374E47374644374D4A3B49
            4637858278FEFEFEFEFEFEFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBFFFF
            FF8581774845374C4A3C4345394244394244394344394A483A4C493B48453784
            8177FEFDFDFEFEFEFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFF
            FFA09E964845374B483A4A46374A46374A46374A46374A4639484537838076FD
            FDFCFEFEFEFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFF
            FFF9F9F8C8C6C1BFBDB8C1BFB9C1BFB9C1BFB9C1BFB9BFBCB6C7C5C0F9F9F8FF
            FFFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFE
            FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object ListView4: TListView
        Left = 0
        Top = 49
        Width = 1019
        Height = 409
        Align = alClient
        Columns = <
          item
            AutoSize = True
            Caption = 'name'
          end
          item
            AutoSize = True
            Caption = 'tx'
          end
          item
            AutoSize = True
            Caption = 'rx'
          end
          item
            AutoSize = True
            Caption = 'distance'
          end
          item
            AutoSize = True
            Caption = 'time'
          end
          item
            AutoSize = True
            Caption = 'vendor'
          end
          item
            AutoSize = True
            Caption = 'model'
          end
          item
            AutoSize = True
            Caption = 'vlan'
          end
          item
            AutoSize = True
            Caption = 'mac'
          end
          item
            AutoSize = True
            Caption = 'version'
          end
          item
            AutoSize = True
            Caption = 'status'
          end
          item
            AutoSize = True
            Caption = 'datetime'
          end
          item
            AutoSize = True
            Caption = 'ip'
          end
          item
            AutoSize = True
            Caption = 'ifindex'
          end>
        GridLines = True
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        ViewStyle = vsReport
        OnColumnClick = ListView4ColumnClick
        OnCompare = ListView4Compare
        OnCustomDrawItem = ListView4CustomDrawItem
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'OIDs '#1082#1086#1088#1080#1089#1090#1091#1074#1072#1095#1072
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 1019
        Height = 65
        Align = alTop
        TabOrder = 0
        object Button3: TButton
          Left = 8
          Top = 16
          Width = 41
          Height = 41
          Caption = '+'
          TabOrder = 0
          OnClick = Button3Click
        end
        object RadioButton1: TRadioButton
          Left = 192
          Top = 18
          Width = 65
          Height = 17
          Caption = 'SNMP'
          Checked = True
          TabOrder = 1
          TabStop = True
          Visible = False
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 192
          Top = 44
          Width = 65
          Height = 17
          Caption = 'Telnet'
          TabOrder = 2
          Visible = False
          OnClick = RadioButton2Click
        end
        object LabeledEdit1: TLabeledEdit
          Left = 56
          Top = 32
          Width = 121
          Height = 24
          EditLabel.Width = 35
          EditLabel.Height = 16
          EditLabel.Caption = #1053#1072#1079#1074#1072
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 3
        end
        object LabeledEdit2: TLabeledEdit
          Left = 272
          Top = 32
          Width = 161
          Height = 24
          EditLabel.Width = 150
          EditLabel.Height = 16
          EditLabel.Caption = #1052#1072#1089#1082#1072' '#1074#1080#1074#1086#1076#1091' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1091
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 4
          Text = '*'
          Visible = False
          OnChange = LabeledEdit2Change
        end
        object Button9: TButton
          Left = 488
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Button9'
          TabOrder = 5
          Visible = False
          OnClick = Button9Click
        end
      end
      object ListView5: TListView
        Left = 0
        Top = 65
        Width = 241
        Height = 409
        Align = alLeft
        Columns = <
          item
            AutoSize = True
            Caption = #1053#1072#1079#1074#1072
          end>
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        ViewStyle = vsReport
        OnClick = ListView5Click
      end
      object GroupBox5: TGroupBox
        Left = 241
        Top = 65
        Width = 778
        Height = 409
        Align = alClient
        Caption = 'OID'
        TabOrder = 2
        object Edit5: TEdit
          Left = 8
          Top = 24
          Width = 713
          Height = 24
          TabOrder = 0
          OnChange = Edit5Change
        end
        object Memo100: TMemo
          Left = 2
          Top = 80
          Width = 774
          Height = 327
          Align = alBottom
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = False
          Enabled = False
          Lines.Strings = (
            
              #1042#1080#1088#1072#1079' [ifindex] '#1103#1074#1083#1103#1108' '#1089#1086#1073#1086#1102' '#1079#1084#1110#1085#1085#1091' '#1079#1072#1084#1110#1089#1090#1100' '#1103#1082#1086#1111' '#1073#1091#1076#1077' '#1087#1110#1076#1089#1090#1072#1074#1083#1077#1085#1086 +
              ' '#1095#1080#1089#1083#1086#1074#1077' '#1079#1085#1072#1095#1077#1085#1085#1103' ifindex-'#1091' '#1076#1083#1103' '#1074#1080#1076#1110#1083#1077#1085#1086#1111' ONU'
            '( '#1087#1088#1080#1082#1083#1072#1076': 1.3.6.1.4.1.3320.101.12.1.1.8.[ifindex].1  )')
          ParentCtl3D = False
          TabOrder = 1
        end
      end
    end
  end
  object ProgressBar2: TProgressBar
    Left = 0
    Top = 513
    Width = 1027
    Height = 15
    Align = alBottom
    Min = 0
    Max = 1000
    Step = 1
    TabOrder = 3
    Visible = False
  end
  object IdTelnet1: TIdTelnet
    OnDataAvailable = IdTelnet1DataAvailable
    Terminal = 'dumb'
    Left = 56
    Top = 304
  end
  object IdSNMP1: TIdSNMP
    ReceiveTimeout = 2000
    Community = 'public'
    Left = 104
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList2
    Left = 152
    Top = 296
    object OLT1: TMenuItem
      Caption = #1044#1086#1076#1072#1090#1080' OLT'
      ImageIndex = 2
      OnClick = OLT1Click
    end
    object N1: TMenuItem
      Caption = #1054#1087#1080#1090#1072#1090#1080' '#1074#1089#1110' OLT'
      ImageIndex = 1
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      ImageIndex = 6
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1055#1086#1088#1090#1080
      ImageIndex = 11
      OnClick = N4Click
    end
    object N10: TMenuItem
      Caption = #1030#1085#1092#1086#1088#1084#1072#1094#1110#1103
      ImageIndex = 7
      OnClick = N10Click
    end
    object N11: TMenuItem
      Caption = #1047#1073#1077#1088#1077#1075#1090#1080' '#1074#1089#1077
      ImageIndex = 0
      OnClick = N11Click
    end
    object N12: TMenuItem
      Caption = #1055#1077#1088#1077#1079#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080
      ImageIndex = 8
      OnClick = N12Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 280
    object OLT2: TMenuItem
      Caption = #1044#1086#1076#1072#1090#1080' OLT'
      Visible = False
      OnClick = OLT2Click
    end
    object N2: TMenuItem
      Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
      object Telnet1: TMenuItem
        Caption = 'Telnet'
        OnClick = Telnet1Click
      end
      object SNMP1: TMenuItem
        Caption = 'SNMP'
        OnClick = SNMP1Click
      end
      object TFTP1: TMenuItem
        Caption = 'TFTP'
        OnClick = TFTP1Click
      end
      object N24: TMenuItem
        Caption = #1058#1072#1081#1084#1072#1091#1090#1080
        OnClick = N24Click
      end
      object N25: TMenuItem
        Caption = #1041#1072#1079#1072' '#1076#1072#1085#1080#1093
        OnClick = N25Click
      end
    end
    object N23: TMenuItem
      Caption = #1060#1091#1085#1082#1094#1110#1111
      object MAC2: TMenuItem
        Caption = #1055#1086#1096#1091#1082' MAC '#1072#1076#1088#1077#1089#1072
        OnClick = MAC2Click
      end
      object N26: TMenuItem
        Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1073#1072#1079#1110' '#1076#1072#1085#1080#1093
        OnClick = N26Click
      end
      object N27: TMenuItem
        Caption = 'OIDs '#1082#1086#1088#1080#1089#1090#1091#1074#1072#1095#1072
        OnClick = N27Click
      end
      object N18: TMenuItem
        Caption = #1058#1077#1088#1084#1110#1085#1072#1083' ('#1076#1083#1103' '#1084#1086#1085#1110#1090#1086#1088#1080#1085#1075#1091')'
        OnClick = N18Click
      end
    end
    object N22: TMenuItem
      Caption = #1042' '#1092#1086#1085
      Visible = False
      OnClick = N22Click
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 248
    Top = 264
    Bitmap = {
      494C010103000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF8D8D8DFF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF8D8D8DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF323232FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFFFFFFFFEEEEEEFF000000FF030303FF0000
      00FF000000FF040404FF010101FFEDEDEDFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF8D8D8DFF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF8D8D8DFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030303FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF030303FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFFFFFFFFF6F6F6FFF000000FF000000FF040404FF787878FF000000FFFBFB
      FBFFFBFBFBFFFFFFFFFF7B7B7BFF040404FF000000FF000000FF6F6F6FFF0000
      00FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFF000000FFFFFFFFFF3E3E
      3EFF3D3D3DFF000000FF000000FFFFFFFFFFDDDDDDFF000000FF000000FF7070
      70FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF8D8D8DFF909090FF333333FF909090FF909090FF333333FF9090
      90FF909090FF333333FF909090FF909090FF575757FF909090FF8D8D8DFF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF3E3E3EFF0000
      00FF000000FFF1F1F1FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF7F7F7FFF000000FF000000FF333333FF000000FF000000FF333333FF0000
      00FF000000FF333333FF000000FF000000FF808080FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF363636FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFFFFFFFFF0303
      03FF000000FFD8D8D8FF000000FF000000FF000000FFF2F2F2FF000000FF0000
      00FF000000FF000000FFF1F1F1FF000000FF000000FF000000FFD8D8D8FF0000
      00FF030303FFFFFFFFFF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF333333FF000000FF000000FF333333FF0000
      00FF000000FF333333FF000000FF000000FF808080FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFEAEAEAFF0000
      00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFFFBFBFBFF0000
      00FF000000FFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFF0303
      03FF000000FFEAEAEAFF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF333333FF000000FF000000FF333333FF0000
      00FF000000FF333333FF000000FF000000FF808080FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF202020FF4040
      40FF404040FF000000FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0
      C0FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFCFCFCFFC2C2C2FFFFFFFFFFFCFCFCFF0000
      00FF000000FF000000FFFFFFFFFFC3C3C3FF000000FF000000FF000000FF7878
      78FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFF040404FF0000
      00FFFCFCFCFF000000FF000000FFFCFCFCFF000000FFC2C2C2FFFCFCFCFF0000
      00FF000000FFFFFFFFFFC3C3C3FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFCFCFCFF000000FF0000
      00FFFCFCFCFF000000FF000000FF000000FF000000FF000000FFC2C2C2FFFFFF
      FFFFFFFFFFFF0E0E0EFF000000FF000000FF000000FF000000FF000000FFFBFB
      FBFF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFCFCFCFF000000FF0000
      00FFFCFCFCFF000000FF000000FF000000FF000000FF000000FFC1C1C1FFFFFF
      FFFFFFFFFFFF0E0E0EFF000000FF000000FF000000FF000000FF000000FFFBFB
      FBFF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFF030303FF0000
      00FFFEFEFEFFFCFCFCFFFCFCFCFFF8F8F8FF000000FF0D0D0DFFFCFCFCFF0404
      04FF040404FFFFFFFFFF0E0E0EFF000000FFFCFCFCFFFCFCFCFFFCFCFCFF0000
      00FF000000FF030303FF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFCFCFCFFC1C1C1FFFFFFFFFFFCFCFCFF0000
      00FF000000FF000000FFFFFFFFFFC2C2C2FF000000FF000000FF000000FF7979
      79FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFEAEAEAFF0000
      00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFFFBFBFBFF0000
      00FF000000FFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFF0303
      03FF000000FFEAEAEAFF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF202020FF4040
      40FF404040FF000000FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0
      C0FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFFEFEFEFF0202
      02FF000000FF000000FF000000FF000000FF000000FF404040FF030303FF0000
      00FF000000FF030303FF3F3F3FFF000000FF000000FF000000FF000000FF0000
      00FF020202FFFFFFFFFF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF000000FF000000FF0000
      00FF000000FF000000FF000000FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FFF9F9F9FF000000FF000000FF000000FF000000FF808080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF3D3D3DFF0000
      00FF000000FFF1F1F1FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF000000FF000000FF0000
      00FF000000FF000000FF000000FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF363636FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFF000000FFFFFFFFFF3D3D
      3DFF3C3C3CFF000000FF000000FFFFFFFFFFDEDEDEFF000000FF000000FF6F6F
      6FFF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF909090FF9090
      90FF909090FF909090FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFFFFF
      FFFFFFFFFFFFFCFCFCFF000000FF000000FF000000FF000000FF000000FFFFFF
      FFFF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030303FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF030303FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFFFFFFFFEDEDEDFF000000FF030303FF0000
      00FF000000FF040404FF000000FFECECECFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF8D8D8DFF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF8D8D8DFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFCFC
      FCFFFCFCFCFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF8D8D8DFF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF8D8D8DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFC00003FFFFFF000000FFFFFF80
      0001FFFFFF000000FE00FF000000FFFFFF000000FE007F000000FFFFFF000000
      F0201F000000FFFFFF000000F1460F000000FFFFFF000000F3C3CF06DB60FF3F
      E1000000C381C306DB60FC1FC1000000C281C306DB60F807C1000000CE04E307
      FFE0F007F10000008600F307FFE0F01FC100000080000307FFE0801FC1000000
      80000307FFE0801FC100000080001307FFE0F01FC1000000CE04E307FFE0F007
      F1000000C281C307FFE0F807C1000000C781E3007E00F81FC1000000F3C3CF00
      7E00FF3FE1000000F1460F000000FFFFFF000000F8420F000000FFFFFF000000
      FE007F000000FFFFFF000000FE00FF000000FFFFFF000000FFC3FF800001FFFF
      FF000000FFFFFFC00003FFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu2: TPopupMenu
    AutoPopup = False
    Images = ImageList2
    Left = 312
    Top = 264
    object N20: TMenuItem
      Caption = #1042' '#1090#1077#1082#1089#1090
      Visible = False
      OnClick = N20Click
    end
    object N5: TMenuItem
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1110#1103
      ImageIndex = 7
      Visible = False
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1054#1089#1090#1072#1085#1085#1077' '#1074#1110#1076#39#1108#1076#1085#1072#1085#1085#1103
      ImageIndex = 5
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1054#1085#1086#1074#1080#1090#1080' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 1
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #1055#1077#1088#1077#1079#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080
      ImageIndex = 8
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
      ImageIndex = 9
      OnClick = N9Click
    end
    object MAC1: TMenuItem
      Caption = #1058#1072#1073#1083#1080#1094#1103' MAC'
      ImageIndex = 10
      OnClick = MAC1Click
    end
    object N13: TMenuItem
      Caption = #1042#1110#1076#1088#1077#1108#1089#1090#1088#1091#1074#1072#1090#1080
      ImageIndex = 6
      OnClick = N13Click
    end
    object N15: TMenuItem
      Caption = #1047#1072#1073#1083#1086#1082#1091#1074#1072#1090#1080
      ImageIndex = 3
      OnClick = N15Click
    end
    object N16: TMenuItem
      Caption = #1056#1086#1079#1073#1083#1086#1082#1091#1074#1072#1090#1080
      ImageIndex = 4
      OnClick = N16Click
    end
    object N17: TMenuItem
      Caption = #1055#1110#1076#1087#1080#1089
      ImageIndex = 12
      OnClick = N17Click
    end
    object N19: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1080' '#1087#1088#1086#1096#1080#1074#1082#1091
      ImageIndex = 13
      OnClick = N19Click
    end
    object N21: TMenuItem
      Caption = #1042#1077#1088#1089#1110#1103' '#1087#1088#1086#1096#1080#1074#1082#1080
      Visible = False
      OnClick = N21Click
    end
    object Script1: TMenuItem
      Caption = 'OIDs'
      ImageIndex = 14
      OnClick = Script1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 376
    Top = 264
    object N14: TMenuItem
      Caption = #1054#1085#1086#1074#1080#1090#1080
    end
  end
  object ImageList2: TImageList
    Height = 24
    Width = 24
    Left = 72
    Top = 240
    Bitmap = {
      494C010110001300040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFDBDBDBFF5A5A
      5AFFC4C4C4FFFEFEFEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFEFEFEFFFEFEFEFF000000FF000000FFE5E5E5FFC1C1
      C1FFC0C0C0FFE5E5E5FF000000FF000000FFFEFEFEFFFEFEFEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFF3F3F3FF2E2E
      2EFF2B2B2BFF636363FFD0D0D0FFFEFEFEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFF6F6F6FFCECECEFFD0D0D0FFF8F8F8FFFEFEFEFFD1D1D1FFF0F0
      F0FFF0F0F0FFD1D1D1FFFEFEFEFFF8F8F8FFD0D0D0FFCFCFCFFFF6F6F6FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFDFDFDFF3C3C
      3CFF2C2C2CFF3A3A3AFFC1C1C1FFE4E4E4FFEBEBEBFFFEFEFEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFDFDFDFFCDCCCCFFCECACAFFD7D4D4FFC9C9C9FFE1E1E1FFB2B2B2FFF0F0
      F0FFF0F0F0FFB3B3B3FFE1E1E1FFCACACAFFD6D3D3FFCECACAFFCCCBCBFFFCFC
      FCFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFFDFDFDFFDCD3CAFFC1B19FFFAA957DFF987D5FFF8C6D4CFF8362
      3DFF83623DFF8C6D4CFF987D60FFAB957DFFC1B19FFFDCD3CAFFFDFDFDFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFEFEFEFF5D5D
      5DFF717171FFD9D9D9FFF5F5F5FFF4F4F4FFEBEBEBFFE2E2E2FFEDEDEDFFFEFE
      FEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFFD9D7D7FFDFD9D9FFE4E0E0FFB9B7B7FFC4C4C4FFDDDDDDFFF1F1
      F1FFF1F1F1FFDDDDDDFFC5C4C4FFB9B7B7FFE4E0E0FFE0D9D9FFD8D6D6FFFEFE
      FEFF000000FF000000FF000000FF000000FF000000FF000000FFFDFDFDFFE0D7
      CEFFAB957CFF91724EFF906A3DFFA98356FFB89365FFC5A173FFA07B4EFFE0DF
      DEFFE0DFDEFFA17B4EFFC8A375FFBC9769FFAC875AFF936D40FF92734FFFAC96
      7CFFE1D9D0FFFDFCFCFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFF1F1
      F1FFF8F8F8FFF7F7F7FFF6F6F6FFF5F5F5FFF3F3F3FFEFF0F1FFC7DAE4FFC7DE
      ECFFFEFEFEFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFAFAFAFFF9F9
      F9FFFEFEFEFFE0E0E0FFC7C2C2FFE3DDDDFFE7E3E3FFE8E6E6FFEAE8E8FFEBEA
      EAFFEBEAEAFFEAE8E8FFE8E6E6FFE7E4E4FFE3DEDEFFC7C2C2FFDEDEDEFFFEFE
      FEFFF9F9F9FFFAFAFAFF000000FF000000FF000000FF000000FFFCFCFBFF815F
      37FFA68154FFC19E70FFD2AF82FFD6B486FFD9B789FFDAB88AFFA88456FFEAEA
      EAFFEAEAEAFFA88456FFDAB88AFFD9B789FFD7B587FFD4B183FFC5A174FFAA85
      57FF805B33FFF5F2EFFF000000FF000000FF140DB9FF0000A0FF00009EFF0000
      9DFF00009DFF00009EFF0000A0FF000000FF000000FF008C9EFF008A9DFF0088
      9DFF00889DFF00899DFF008B9DFF008C9CFF000000FFB4A200FFB2A100FFAFA0
      00FFB0A100FFB0A000FFB2A100FFB3A200FF000000FF000000FFFEFEFEFFF5F5
      F5FFFAFAFAFFF9F9F9FFF6F6F7FFF4F5F5FFF0F2F3FF9FD1F1FF2DA1ECFF34A2
      E8FFEAF1F5FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF8F8F8FFC2BFBFFFB1AD
      ADFFCACACAFFB0ADADFFD5CCCCFFDCD5D5FFDFD8D8FFE2DDDDFFE8E5E5FFEDEC
      EBFFEEECEBFFE9E6E6FFE2DDDDFFDFD9D9FFDCD5D5FFD5CDCDFFB0ADADFFCBCB
      CBFFB2AEAEFFC1BDBDFFF8F8F8FF000000FF000000FF000000FF000000FF9173
      4DFFB99567FFDDBB8EFFDDBB8EFFDDBB8EFFDDBB8EFFDDBB8EFFAB8758FFF3F3
      F3FFF3F3F3FFAB8758FFDDBB8EFFDDBB8EFFDDBB8EFFDDBB8EFFDDBB8EFFB996
      68FF846238FFFCFBFAFF000000FF000000FF1912B9FF0F00D0FF0C00DEFF0A00
      ECFF0A00EBFF0C00DCFF0F00CEFF000000FF000000FF00B2EBFF00C0F0FF00D0
      F5FF00D6F7FF00C8F3FF00BAEDFF008C9BFF000000FFC2D000FFC7D700FFD1DD
      00FFD6E000FFD4DF00FFC8D800FFBFC900FF000000FF000000FFFEFEFEFFEAEA
      EAFFFAFAFAFFF8F8F9FFF5F6F6FFDFECF4FF61B7EFFF28A2F1FF229FEEFF1F9A
      EAFF62B6EBFFFEFEFEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFDBDADAFFB5A6A6FFC4B3
      B3FFABA0A0FFCBBFBFFFD3C7C7FFD6CCCCFFE4DEDEFFEBECE8FFEAEBE6FFEAE8
      E4FFEDE9E7FFF1EDECFFF2EEEEFFE5DEDEFFD6CCCCFFD3C7C7FFCCC0C0FFABA0
      A0FFC4B3B3FFB5A6A6FFDADADAFF000000FF000000FF000000FF000000FFD5CA
      BCFF8A6434FFCEAC7EFFDFBE91FFDFBE91FFDFBE91FFDFBE91FFAD895AFFFAFA
      FAFFFAFAFAFFAD895AFFDFBE91FFDFBE91FFDFBE91FFDFBE91FFCDAB7EFF8A64
      34FFC3B39FFF000000FF000000FF000000FF1912B8FF1000C7FF0F00CEFF0D00
      D4FF0D00D4FF0F00CDFF1000C7FF000000FF000000FF00AEE9FF00B0E9FF00B4
      EBFF00B5ECFF00B2EAFF00AEE8FF008C9CFF000000FFD9DC00FFBED300FFBFD4
      00FFC0D400FFBFD400FFBFD400FFBCC700FF000000FF000000FF000000FFE6E6
      E6FFF8F9F9FFF6F7F8FFB5DDF6FF39AAF2FF219DEDFF209DEDFF239FEFFF1F9B
      EBFF1D98E6FFA5D0ECFFFEFEFEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E4E4FFC8BABAFFC1AE
      AEFFC7B7B7FFCBBDBDFFCDBFBFFFE4DDDDFFE0E6DCFFD0DBCDFFCBD7CAFFD4DE
      D5FFDBDFDBFFD8D8D7FFE3DEDDFFF1ECECFFE5DEDEFFCDC0C0FFCBBDBDFFC8B7
      B7FFC1AEAEFFC8B9B9FFE5E3E3FF000000FF000000FF000000FF000000FF0000
      00FFA68D6EFF967041FFD9B98BFFE1C194FFE1C194FFE1C194FFAF8B5DFFFFFF
      FFFFFFFFFFFFAF8B5DFFE1C194FFE1C194FFE1C194FFD9B88BFF967041FF997C
      58FFFDFDFDFF000000FF000000FF000000FF1912B6FF1000C3FF1000C5FF1000
      C7FF1000C6FF1000C5FF1000C2FF000000FF000000FF00C6F2FF00ADE8FF00AD
      E8FF00ADE8FF00ADE8FF00ACE7FF008E9EFF000000FFDCDD06FFD6DC01FFBDD3
      01FFBED301FFBED301FFBED301FFBCC701FF000000FF000000FF000000FFE7E8
      E8FFEBF2F7FF72BCEDFF1E98E7FF28A5F4FF229FEEFF1C99E9FF219DEDFF209D
      EDFF1E99E9FF269AE5FFDEEAF2FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFE6E6E6FFB9AF
      AFFFC4B2B2FFC4B3B3FFD7CCCCFFD7DFD3FFB4CFB2FFC4E0C5FFDCF5DFFFE5F7
      E7FFF1FBF3FFF9FDFAFFE6E8E7FFD7D4D3FFEDE7E7FFD8CDCDFFC4B3B2FFC4B2
      B2FFB9AFAFFFE6E5E5FFFEFEFEFF000000FF000000FF000000FF000000FF0000
      00FFFAF9F7FFA89070FF946E3DFFD2B083FFE3C396FFE3C396FFB18D5EFFBBBB
      BBFFBBBBBBFFB18D5EFFE3C396FFE3C396FFD2B083FF946E3DFF9F8460FFF5F2
      EEFF000000FF000000FF000000FF000000FF1912C4FF0F00D8FF1000C1FF1000
      C1FF1000C1FF1000C1FF1000C1FF000000FF000000FF01C7F2FF01C1EFFF01AC
      E7FF01ACE7FF01ACE7FF01ACE7FF0091A1FF000000FFDCDF11FFD5DC03FFD2DA
      03FFBED403FFBFD403FFBFD403FFBECA02FF000000FF000000FF000000FFF8F9
      F9FF5CB6F0FF209AE9FF1894E4FF1F9BEBFF23A0F0FF1E9BEBFF1A97E7FF219E
      EEFF1E9BEBFF1A97E7FF4EACE8FFFBFBFCFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFCFCFCFFEBEBEBFFAFA1
      A1FFBEA9A9FFBFACACFFDCD9D5FF9ABF9BFFA6D7A6FFC2EDC3FFCBF0CEFFD6F3
      DAFFEBFAEEFFF8FDF9FFFCFEFDFFE4E5E4FFCFC9C8FFE2DCDBFFBDACAAFFBDA9
      A9FFAFA1A1FFEAEAEAFFFCFCFCFF000000FF000000FF000000FF000000FF0000
      00FF000000FFFDFDFDFFC8B7A2FF9A794DFFBE9B6CFFDDBD90FFB08C5CFF88BB
      EAFF88BBEAFFB28E5EFFDDBD90FFBE9B6CFF957144FFC1AE96FFFAF8F6FF0000
      00FF000000FF000000FF000000FF000000FF1A13C5FF0F01D8FF1001D2FF1101
      C1FF1101C1FF1101C1FF1101C1FF000000FF000000FF02C5F1FF03C1EFFF02C0
      EEFF02ADE7FF02ADE7FF02ACE7FF0093A5FF000000FFDCE023FFD5DC08FFD2DB
      08FFD1DB08FFC1D508FFC1D507FFC2CD05FF000000FF000000FF000000FF0000
      00FFC5DFF0FF259FEDFF1D99E9FF1793E3FF229FEFFF209CECFF1B97E7FF1B97
      E7FF209CECFF1D98E8FF1A95E4FF8FC7EBFFFEFEFEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE2E2E2FFB4B0B0FF9F9B9BFFAF9E
      9EFFBBA5A5FFC2B0B0FFAFBEACFF77B979FF9FE29FFFAAE6ABFFB6EAB9FFCCF1
      D3FFF8FCF8FF000000FF000000FF000000FFC1BEBEFFCCC8C5FFBFB1AEFFBAA5
      A4FFB19E9EFF9E9A9AFFB4B0B0FFE2E1E1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFF2EEE9FFBEBAB2FF788B97FF5A7E9BFF597C
      9AFF5B7E9BFF597C9AFF768895FFBAB4ABFFF0EBE5FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1D16C6FF0F01D8FF1001D5FF1101
      C1FF1101C1FF1101C0FF1101C1FF000000FF000000FF03C6F1FF05C3EFFF05C0
      EEFF05ADE8FF05AEE8FF04AEE8FF009AACFF000000FFE1E548FFD6DC0FFFD5DC
      11FFD5DC12FFD6DC11FFC6D710FFC8D00BFF000000FF000000FF000000FF0000
      00FFFEFEFEFF88C9F3FF229DEDFF1B98E8FF1995E5FF219EEEFF1C99E9FF1793
      E3FF1C98E8FF1E9AEAFF1A96E6FF1D95E1FFCFE2EEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC6C0C0FFBBA5A5FFBBA5A5FFBFAA
      AAFFC3AFAFFFCBBDBDFF7EA57FFF5EBC5EFF83DA83FF8FDE8FFFA2E3A7FFDEF4
      E1FF000000FF000000FF000000FF000000FFC8C6C6FFBAB2B1FFC8BDBBFFC2B0
      AFFFBEAAAAFFBBA5A5FFBBA5A5FFC6C1C1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFEEF2F6FFC2D2E2FF7DA5CBFF7DAEDBFF78AB
      DAFF76A9D8FF6192C0FF709CC3FFC2D3E1FFEEF2F6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF231CC8FF1103D8FF1203D5FF1203
      D4FF1303C2FF1303C2FF1303C2FF000000FF000000FF07C5F0FF0AC3EFFF0BC2
      EFFF0BC1EFFF0BB2E9FF0AB1E9FF00A2B5FF000000FFEDEF94FFDADF20FFDBDF
      23FFDCDF24FFDDE023FFDEE021FFD8D717FF000000FF000000FF000000FF0000
      00FF000000FFF7F9FAFF4DB2F2FF219CECFF1B96E6FF1C99E9FF1E9BEBFF1996
      E6FF1591E1FF1E9AEAFF1C98E8FF1894E4FF3CA2E3FFF6F8F9FF000000FF0000
      00FF000000FF000000FF000000FF000000FFCFCACAFFDACECEFFDFD6D6FFE2D9
      D9FFE2D9D9FFD8D1D1FF5B9B5FFF40B840FF63D163FF71D571FF89D990FFF1FA
      F2FF000000FF000000FF000000FFF8FCF9FFA5ADA5FF878780FFAFB2ABFFC0C1
      BAFFC8C8C2FFD2D1CAFFD8CECDFFCFCACAFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFA8BFD5FF83A8CAFF91BEE8FF8DBEEBFF89BC
      EAFF87BAE9FF75A8D6FF5A8CBBFF78A1C5FFA8BFD5FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF2C25CAFF1304D8FF1305D5FF1305
      D3FF1405C3FF1405C3FF1404C2FF000000FF000000FF0DC6F0FF11C6F0FF12C5
      F0FF12C5F0FF12B9EBFF11B6EAFF00AABFFF000000FFF5F5BDFFE1E132FFE3E3
      37FFE4E339FFE5E338FFE6E335FFE3DC24FF000000FF000000FF000000FF0000
      00FF000000FF000000FFD5E6F1FF2CA3F0FF209BEBFF1995E5FF1D99E9FF1A97
      E7FF1692E2FF1793E3FF1D99E9FF1995E5FF1792E1FF7ABDE9FFFEFEFEFF0000
      00FF000000FF000000FF000000FF000000FFF5F5F5FFE7E6E6FFD5D3D3FFD5CD
      CDFFE6DDDDFFDDD5D5FF4B9650FF22B121FF42C642FF52CB52FF6BCF73FFEBF8
      EDFF000000FF000000FF000000FF83E29FFF34C258FF38BD58FF39BA57FF36B9
      53FF2CB648FF27B743FF82CA94FFF5F5F5FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFCFCFCFF668CAFFF84B2DAFFACCFF0FF91C0EBFF88BB
      EAFF88BBEAFF88BBEAFF72A4D3FF5F91BDFF6388ABFFFBFBFBFF000000FF0000
      00FF000000FF000000FF000000FF000000FF3932CDFF1507D7FF1708D5FF1708
      D5FF1809C4FF1809C5FF1707C4FF000000FF000000FF19C9F1FF1CCAF1FF1DCB
      F1FF1DCBF1FF1DCCF2FF1BC7F0FF00B2C8FF000000FFFDFDF5FFFDFDF3FFFDFD
      F1FFFDFDF2FFF9F8D1FFF9F9D0FFF9F8CFFF000000FF000000FF000000FF0000
      00FF000000FF000000FFFEFEFEFF9CD0F2FF25A1EFFF1E9AEAFF1996E6FF1C98
      E8FF1894E4FF1490E0FF1995E5FF1B97E7FF1993E3FF1790DEFFBEDAECFFFEFE
      FEFF000000FF000000FF000000FF000000FF000000FF000000FFF2F2F2FFCCC6
      C6FFE9E2E2FFE8E1E1FF599C5EFF19B519FF24BB24FF2FC02FFF3AC33EFFA8DE
      AFFF000000FF000000FF000000FFB0C3B4FF32B04EFF2EC350FF3AC655FF47CA
      5DFF48CA5BFF41C954FF75D48EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFEDEDEEFF2B3750FF86B1D9FFBCD9F3FF97C4ECFF89BC
      EAFF88BBEAFF88BBEAFF87BAE9FF5D8AB5FF1A2034FFE8E8EAFF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F48D5FF1A0DD7FF1B0DD6FF1C0E
      D6FF1C0ED6FF1C0DC8FF1B0CC7FF000000FFFFFFFFFF35D2F4FF2CD1F3FF2FD3
      F4FF2FD4F4FF2ED5F4FF2BD6F5FF00B4CDFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFCFCFDFF60BAF4FF229FEFFF1D99E9FF1A97
      E7FF1995E5FF1591E1FF1490E0FF1B97E7FF1B96E5FF1B92DEFF84BADDFFF0F1
      F1FF000000FF000000FF000000FF000000FF000000FFF7F7F7FFC5C4C4FFB6AE
      AEFFECE6E6FFECE6E6FF9ABC9AFF26B02BFF22BB23FF28BD2AFF12B913FF22AD
      2DFFACD2B2FFFBFCFBFFBEBEBEFF4B4948FF377341FF26BB42FF22C03DFF4FCF
      66FF55D16AFF59D36DFF7DDC97FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE3E3E5FF17182AFF779ABEFFBCD7F0FFA0C9EEFF8ABC
      EBFF88BBEAFF88BBEAFF85B7E6FF597FA8FF0E0E20FFDFDFE2FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7771DEFF2012D9FF2214D9FF2214
      D9FF2214D9FF2114D9FF2113CBFF000000FFFFFFFFFF4DDBF6FF3DDAF5FF40DB
      F6FF40DCF6FF3FDDF7FF3BDDF7FF00B5CFFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE3EDF4FF35A9F2FF239DEDFF1B98
      E8FF1996E6FF1692E2FF148FDFFF1792E2FF38A0E2FFB2CEE2FFE9EAEDFFCECE
      F1FFFEFEFEFF000000FF000000FF000000FF000000FFDBD9D9FFD1CACAFFEFEA
      EAFFF0EBEBFFF0EBEBFFE2E4DEFF3CA043FF33C237FF35C33AFF39C43EFF11B9
      12FF0EA014FF2C8C35FF23712CFF208C2FFF1BB12DFF1CBE30FF4FD066FF61D8
      78FF63D97BFF68DC80FF7DDC98FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE1E1E3FF171729FF19192AFF96A9C1FF9ABAD9FF8BBB
      E9FF87BAE9FF85B7E6FF6D94BEFF0E0E20FF0E0E21FFDEDEDFFF000000FF0000
      00FF000000FF000000FF000000FF000000FF9692E8FF271ADBFF291CDBFF2B1D
      DCFF2A1DDDFF291CDEFF271ADFFF000000FFFFFFFFFFFEFFFFFFFEFFFFFFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFEFEFEFFB1D9F2FF28A3F1FF209D
      EDFF1B97E7FF1994E4FF1790DEFF66B0DFFFDBE3E8FFE0E1EEFF8080E6FF4545
      DFFFBDBDECFFFEFEFEFF000000FF000000FF000000FFE8E8E8FFE0DBDBFFF2ED
      EDFFDDDADAFFEAE6E6FFF3EFEFFF9BC99FFF44BF4FFF47CB51FF4ACD56FF50CF
      5BFF36C63DFF1BBD1EFF12BA13FF19BD1FFF38C947FF61DA79FF6DDF87FF70E2
      8CFF74E491FF79E697FF83DF9FFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE1E1E4FF161729FF2B2B3BFF0F0F21FF101022FF4E66
      84FF7FAED9FF6A90B9FF0E0E20FF0E0E20FF0F0F22FFDFDFE2FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC9C6F5FF3125DFFF3528E1FF362A
      E2FF362AE2FF3428E4FF3225E5FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFEFEFEFF72C3F6FF26A1
      F1FF209CECFF2E9CE3FFA8CEE7FFE8E9ECFFBEBFE9FF5656E1FF4343E1FF4444
      E2FF5555E3FFF2F2F6FF000000FF000000FF000000FFFDFDFDFFE5E4E4FFE3E2
      E2FFEEEEEEFFD8D6D6FFECE8E8FFF6F3F3FF7AC782FF58CF68FF5DD770FF61D9
      75FF65DC7BFF69DE80FF6DE086FF71E38CFF75E692FF7AE899FF7FEBA0FF78E4
      96FF6CDD8DFF8DF2B2FF87E2A5FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFECECEDFF232A40FF2B2C3DFF171728FF101022FF0E0E
      20FF0E0E20FF0E0E20FF0E0E20FF101023FF161A2EFFE6E6E7FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE5E4FBFF3C30E4FF3F34E6FF4136
      E7FF4236E8FF3E34E9FF3B30E9FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFEDF2F6FF42AE
      F4FF64B7ECFFDAE7F0FFE0E1E9FF8B8BE4FF4444E0FF4343E2FF4545E3FF4747
      E4FF4B4BE4FFE3E3EEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFDCDCDCFFCAC4C4FFFAF8F8FFF7F7F6FF92DC9CFF5ED673FF7BE5
      95FF7AE898FF7EEB9EFF82EDA5FF86F0ABFF8BF3B2FF91F3B5FF70E091FFACEA
      BDFFE4F8EAFF78E09BFF9CE7B6FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFF8F8F8FF718094FF222436FF363645FF3E3E4CFF1010
      22FF0E0E20FF0E0E20FF0E0E20FF0F0F21FF535D70FFF3F3F3FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E5FCFFFFFFFFFFF4F5F9FFBFC0
      E4FF7F80CCFF5253BDFF3132B1FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFD7E7
      F1FFE9ECEEFFC3C4E4FF5E5FE1FF4343E1FF4444E2FF4646E4FF4747E5FF5454
      E7FFBBBBEFFFFEFEFEFF000000FF000000FF000000FF000000FF000000FF0000
      00FFFCFCFCFFC5C1C1FFF8F7F7FFFCFCFCFFD9D6D6FFE5E3E3FFC9E1CCFF85DD
      95FF7ADF91FF92EAACFFA9F2C3FF99EEB6FF87E4A2FF92E3A7FFB7C6B9FFFCFC
      FCFF000000FFF1FBF4FFEEFAF2FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFEFEFEFFD7DBDFFF222335FF15182BFF363746FF1616
      27FF0E0E20FF0E0F21FF111325FF1A1C2DFFD1D5DBFFFDFDFDFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFDFD
      FDFFBDBDE8FF4848DFFF4444E1FF4545E3FF4646E4FF4848E6FF7878EBFFE5E5
      F3FFFEFEFEFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFFE5E4E4FFEDECECFFEAE8E8FFE4E4E4FFF8F8F8FFC2BFBFFFFBFA
      FAFFFBFBFAFFBAC2B9FFE6F5E9FFDBE4DDFFE9E7E6FFEEECECFFE4E3E3FFFEFE
      FEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFBFBFBFFCBD2DCFF6D8097FF20273DFF1417
      2BFF15192DFF21293FFF57667DFFC7CED7FFFBFBFCFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFF3F3F8FF5F5FE3FF4545E3FF4646E5FF4E4EE6FFAAAAEFFFFCFCFDFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFFEFEFEFFEFEFEFFFEDECECFFFDFDFDFF000000FFD2CFCFFFFAF9
      F9FFFBFAFAFFD1CECEFF000000FFFEFEFEFFEDECECFFEEEEEEFFFEFEFEFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFEFEFEFFF9F9FAFFECECEDFFE6E6
      E7FFE6E6E7FFECECEDFFF6F6F6FFFEFEFEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFFD3D3EFFF5858E7FF6C6CEBFFD9D9F1FFFEFEFEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFF4F4F4FFE9E9
      E9FFE9E9E9FFF4F4F4FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0856
      DAFF0254D9FF0352D4FF0555D6FF0E50C9FF305EB2FF4560B2FF454DCAFF4545
      D5FF4646D6FF4D4DD0FF6666CCFF9191CCFFC5C5D1FFE1E1E1FFE3E3E3FFE4E4
      E4FFDFE0E3FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF445FB0FF6167BAFF7373
      C7FF7373C8FF6767BFFF6565CAFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF8D8D8DFF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF8D8D8DFF000000FF000000FF000000FF383B60FF093DCDFF0437
      D7FF0133D4FF0431D1FF1631D0FF192DD2FF1829CDFF1C29BCFF2129ACFF2329
      A4FF2329A4FF2129ACFF1D29BBFF1829CEFF1A2DD3FF2F42D2FF4E61D4FF576A
      D8FF5C70DAFF919ADDFF6A8DCEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF2934AFFFCFCFD0FFD7D7
      D7FFD7D7D7FFCFCFD0FF2D36AEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF323232FF000000FF000000FF1036BAFF4273E5FF2085
      E5FF1A88E5FF1A8BE6FF1A8EE7FF1A91E7FF1A94E8FF1A95E8FF1A97E9FF1A98
      E9FF1A99E9FF1A98E9FF1A97E9FF1A95E8FF1A93E8FF1A90E7FF1A8DE7FF1A8A
      E6FF2088E6FF2B60E2FF919ADDFF000000FF000000FF000000FF000000FF0000
      00FF1A87E4FF328CD4FF1A8DE6FF000000FF000000FF3090D1FFD0D0D0FFD4D4
      D4FFD4D4D4FFD0D0D0FF3392D1FF000000FF000000FF000000FF328DD5FF1A89
      E5FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008D8D8DFF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF8D8D8DFFB1C1E9FF0B3DD4FF2294E8FF009F
      E3FF00A7E5FF00AEE7FF00B5E8FF00BCEAFF00C2EBFF04C8ECFF28D1EEFF46D8
      F0FF47D9F0FF29D3EFFF05CAEDFF00C5ECFF00C0EAFF00B9E9FF00B2E7FF00AB
      E6FF00A3E4FF209AE8FF5C70DEFFE4E5E6FF000000FF000000FF000000FF029E
      E1FF6AADC6FFCBCCCCFF6CB4C8FF0CB6E0FF51BCD2FFA4C4CAFFD3D3D3FFD4D4
      D4FFD4D4D4FFD3D3D3FFA5C4CAFF51BCD2FF0CBAE0FF69B4C8FFCBCCCCFF6CB0
      C7FF02A1E1FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF6B8AD6FF043DD8FF1997E8FF00A6
      E5FF00AEE7FF00B7E8FF00BFEAFF0FC9ECFF77DCEDFFCAE2E6FFE1E1E1FFE2E2
      E2FFE7E7E7FFEDEDEDFFD7EEF1FF7CE1F0FF10CCEDFF00C2EBFF00BAE9FF00B2
      E7FF00A9E6FF1AA0E8FF596CDFFFE8E8E8FF000000FF000000FF000000FF67AB
      C4FFC8C8C8FFCACACAFFCBCCCCFFC3C9C9FFD1D1D1FFD2D2D2FFD3D3D3FFD4D4
      D4FFD4D4D4FFD3D3D3FFD3D3D3FFD2D2D2FFC5CBCCFFCECFCFFFCDCDCDFFCACA
      CAFF69ACC4FF1A9FE7FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF2C5EC9FF0640D6FF1999E8FF00AA
      E6FF00B4E8FF00BDEAFF33CEEDFFCAE3E7FFD9D9D9FFD2D2D2FFD3D3D3FFD8D8
      D8FFDEDEDEFFE5E5E5FFEBEBEBFFEDEDEDFFD0E9ECFF34D1EDFF00BFEAFF00B7
      E8FF00ADE7FF19A1E9FF5063DBFFE9E9E9FF000000FF000000FF2C94D3FFC4C5
      C6FFC6C6C6FFC8C8C8FFCBCBCBFFCECECEFFD0D0D0FFD2D2D2FFD5D5D5FFD9D9
      D9FFDADADAFFD7D7D7FFD6D6D6FFD6D6D6FFD5D5D5FFD3D3D3FFCFCFCFFFC8C8
      C8FFC7C8C8FF309CD5FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000333333FF333333FF333333FF3333
      33FF333333FF8D8D8DFF909090FF333333FF909090FF909090FF333333FF9090
      90FF909090FF333333FF909090FF909090FF575757FF909090FF8D8D8DFF3333
      33FF333333FF333333FF333333FF333333FF0A47C3FF1741D4FF189AE9FF00AD
      E6FF00B6E8FF31CAECFFDBE6E8FFDDDDDDFFD4D4D4FFCCCCCCFFB3BCBCFF95BE
      BEFF9AC2C2FFC4CDCDFFE5E5E5FFEDEDEDFFEBEBEBFFDCE6E8FF2FCAEBFF00B8
      E9FF00AFE7FF18A0E8FF2E41D7FFE8E8E8FF000000FF000000FF000000FF60A9
      C1FFBBBCBCFFBEBEBEFFC0C0C0FFC3C3C3FFCECECEFFD2D2D2FFD0D0D0FFCCCC
      CCFFCECECEFFD5D5D5FFDBDBDBFFDCDCDCFFD9D9D9FFD5D5D5FFCBCBCBFFC3C4
      C4FF64ABC2FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000333333FF333333FF333333FF3333
      33FF7F7F7FFF000000FF000000FF333333FF000000FF000000FF333333FF0000
      00FF000000FF333333FF000000FF000000FF808080FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF0E43B9FF1B41DDFF1799E8FF00AD
      E6FF0AB9E9FFCAE6ECFFE3E3E3FFDBDBDBFFC0C8C9FF48C0C7FF07E1E9FF00F1
      F5FF00F1F5FF09E2E9FF51C8D0FFD5DDDEFFEDEDEDFFE8E8E8FFC3E0E7FF09B9
      E9FF00ADE7FF179FE8FF1A2FDBFFCCCCD9FF000000FF000000FF000000FF0BA8
      DBFFB2B6B7FFC3C3C3FFC4C4C4FFC9C9C9FFC0C0C0FFB8B8B8FFBDBDBDFFC7C7
      C7FFCECECEFFD0D0D0FFD1D1D1FFD6D6D6FFDDDDDDFFCECECEFFC8C8C8FFB4B8
      B9FF0DA7DBFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF333333FF000000FF000000FF333333FF0000
      00FF000000FF333333FF000000FF000000FF808080FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF2E5997FF1B43DAFF1597E8FF00AA
      E6FF6ACEECFFEAEAEAFFE3E3E3FFCCD2D3FF28C4D8FF00DBF0FF00E0F1FF00E3
      F2FF00E3F2FF00E0F1FF00DAF0FF2CC8DDFFDDE3E4FFE9E9E9FFE3E3E3FF61C8
      E7FF00A9E5FF159CE7FF1A32D7FF8D8DCFFF000000FF000000FF000000FF4FA7
      C6FFC1C1C1FFC6C6C6FFCFCFCFFFCACACAFFC4C4C4FFC3C3C3FFC1C1C1FFC2C2
      C2FFC7C7C7FFCDCDCDFFD2D2D2FFD1D1D1FFCDCDCDFFD0D0D0FFC7C7C7FFC2C2
      C2FF50A6C5FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF333333FF000000FF000000FF333333FF0000
      00FF000000FF333333FF000000FF000000FF808080FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF3C51B4FF1F47CBFF1394E7FF00A6
      E5FFC2E3EEFFEAEAEAFFE4E4E4FF66C2D4FF00CAECFF00CFEDFF00D3EEFF00D4
      EEFF00D4EEFF00D2EEFF00CEEDFF00C8ECFF6FC8DAFFEAEAEAFFE5E5E5FFB4D7
      E3FF00A3E4FF1497E6FF1D35CAFF5C5CCBFF3C51B3FF3052C0FF3093D3FF98B1
      BAFFC5C5C5FFCACACAFFD2D2D2FFC6C6C6FFCBCBCBFFCACBCBFF7EC4CDFF31CC
      DFFF30CBDFFF7BC2CBFFC8C9C9FFCACACAFFC7C7C7FFD2D2D2FFCBCBCBFFC6C6
      C6FF9BB1BAFF3195D2FF2E42C0FF5C5CCAFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF4248D3FF2349BCFF1190E6FF0DA3
      E4FFE8ECEDFFECECECFFE1E3E3FF1AB8E1FF00BEEAFF00C2EBFF00C5EBFF00C6
      EBFF00C6EBFF00C4EBFF00C0EAFF00BCE9FF1CB8E2FFE4E6E7FFE5E5E5FFDADF
      E1FF0DA0E3FF1190E4FF2138BAFF4949D7FF585CBDFFBEBEBFFFC5C5C5FFC6C6
      C6FFCACACAFFCFCFCFFFCFCFCFFFCBCBCBFFCFCFCFFF76B6C3FF00C4EAFF0000
      00FF000000FF00C3EAFF6EB0BEFFC0C0C0FFC6C6C6FFCFCFCFFFD0D0D0FFCBCB
      CBFFC7C7C7FFC6C6C6FFBEBEBFFF5F5FC1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF4445E1FF254CB5FF0E8BE5FF20A1
      E2FFECECECFFEDEDEDFFDDE4E7FF19B5E8FF1CBAEAFF20BEEBFF20C0EBFF21C1
      ECFF21C1EBFF1CBEEBFF11B8E9FF02B0E7FF03ABE5FFD9E3E7FFE5E5E5FFE0E0
      E0FF1E9CE0FF0F89E2FF233CB4FF4646E1FF6363C0FFC1C1C1FFC6C6C6FFCACA
      CAFFCECECEFFD5D5D5FFCCCCCCFFCECECEFFCECECEFF3CAECFFF000000FF0000
      00FF000000FF000000FF2EA9CDFFBDBDBDFFBEBEBEFFC6C6C6FFD6D6D6FFCFCF
      CFFFCBCBCBFFC6C6C6FFC2C2C2FF6666C1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF4646E2FF2551B6FF2B94E8FF4CAB
      E4FFE8E8E8FFEEEEEEFFE5EAECFF4CBCECFF47BDECFF5EC7EDFFA0DBEFFF71CE
      EFFF47C0ECFF48C0ECFF50C1ECFF5AC2EDFF59BFECFFE1E7E9FFE4E4E4FFDEDE
      DEFF1B91DDFF0C80E0FF2440B5FF4546E2FF6666C3FFC5C5C5FFCACACAFFCDCD
      CDFFD1D1D1FFD6D6D6FFCDCDCDFFD0D0D0FFD0D0D0FF6BB6D1FF000000FF0000
      00FF000000FF000000FF5FB2D1FFC7C7C7FFBFBFBFFFBEBEBEFFD2D2D2FFD2D2
      D2FFCECECEFFCBCBCBFFC6C6C6FF6767C3FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF2657C1FF449DEBFF56AA
      E6FFD9DEE1FFECECECFFEEEEEEFF76C4ECFF52B8EBFFBEDCEBFFE7E7E7FFE1E7
      EAFF54BBECFF52B9EBFF52B8EBFF52B6EAFF65BAE9FFE6E6E6FFE3E3E3FFD0D5
      D8FF6CB2E8FF55A0E9FF2446BFFF4246DEFF6062C9FFD1D1D2FFD6D6D6FFD3D3
      D3FFD4D4D4FFD8D8D8FFCFCFCFFFD1D1D1FFD4D4D4FFB4BEC3FFE5E5E5FF0000
      00FF000000FF51B8E9FF92B3C3FFD3D3D3FFC8C8C8FFC0C0C0FFCACACAFFD1D1
      D1FFD4D4D4FFD6D6D6FFD1D1D2FF6063CBFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF235BD5FF479EEBFF5BA7
      E8FFB1C7D9FFE9E9E9FFECECECFFC3DEEFFF5CB3EAFFCDE0EBFFECECECFFECEC
      ECFF5FB6EBFF5BB4EAFF5BB2EAFF5BB1EAFF5DAFE8FFA7B9C7FFCDCDCEFF8DAD
      C9FF5BA5E7FF71AEEDFF214BD2FF3949D7FF555CD2FF3363CBFF579BD7FFADB8
      C2FFD7D7D7FFDADADAFFD1D1D1FFD3D3D3FFD7D7D7FFD8D8D8FFC4C4C4FFCCCC
      CCFF6AA7CDFF97B2C3FFD4D5D5FFD6D6D6FFD0D0D0FFC7C7C7FFC8C8C8FFCECE
      CEFFABB6C0FF77A7D8FF3155C9FF3A49D6FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF2160E7FF4DA3ECFF65AB
      E9FF7DAEDAFFE2E2E2FFE9E9E9FFECECECFFAED3EEFFD3E2EEFFEEEEEEFFEFEF
      EFFF69B2EAFF65B0EAFF65AFEAFF65AEEAFF65ACE9FF66ABE8FF65A4DCFF65AB
      E9FF65ABE9FF75B1EEFF1E52E4FF2951D7FF000000FF000000FF000000FF81A5
      C5FFD9D9D9FFDDDDDDFFDADADAFFD1D1D1FFDDDDDDFFDEDEDEFFDDDDDDFFDBDB
      DBFFDADADAFFDBDBDBFFD9D9D9FFD7D7D7FFD0D0D0FFD4D4D4FFCFCFCFFFCBCB
      CBFF80A4C5FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF333333FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FF333333FF333333FF333333FF333333FF000000FF2266E9FF55AAEDFF70B1
      EAFF70B0EAFFAABED0FFE5E5E5FFE8E8E8FFEBEBEBFFEBECECFFECECECFFECEC
      ECFF74B2EAFF70B1EAFF70B1EAFF70B1EAFF70B1EAFF70B1EAFF70B1EAFF70B1
      EAFF70B1EAFF7AB5EEFF1F58E7FF2E68CFFF000000FF000000FF000000FF71AB
      DEFFC8C9CBFFE0E0E0FFE3E3E3FFDEDEDEFFD6D6D6FFDEDEDEFFDEDEDEFFDDDD
      DDFFDDDDDDFFDCDCDCFFDADADAFFD1D1D1FFD9D9D9FFE0E0E0FFD7D7D7FFBFC0
      C2FF71ABDDFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF000000FF000000FF0000
      00FF000000FF000000FF000000FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF2E73D9FF5DB0EFFF7BB7
      ECFFA5CAECFFC3D5E6FFE2E2E2FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8E8FFE8E8
      E8FF7EB8ECFF7BB7ECFF7BB7ECFF7BB7ECFF7BB7ECFF7BB7ECFF7BB7ECFF7BB7
      ECFF7BB7ECFF7FB9EFFF1E68D1FF287BCBFF000000FF000000FF000000FF9DB5
      CAFFE0E0E0FFE5E5E5FFE9E9E9FFEBEBEBFFE3E3E3FFD3D3D3FFD1D1D1FFD9D9
      D9FFD8D8D8FFCFCFCFFFD1D1D1FFDFDFDFFFE7E7E7FFE5E5E5FFDFDFDFFFD7D8
      D8FF9DB4C9FF7FB8EEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF000000FF000000FF0000
      00FF000000FF000000FF000000FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF528EB2FF65B6F0FF8FBF
      EBFFDADADAFFDCDCDCFFDEDEDEFFE1E1E1FFE2E2E2FFE4E4E4FFE4E4E4FFE3E3
      E3FF88BDEDFF85BCEDFF85BCEDFF85BCEDFF85BCEDFF85BCEDFF85BCEDFF85BC
      EDFF85BCEDFF84BDF0FF2689B1FF279A68FF000000FF000000FF6AABDAFFD6D6
      D6FFE7E7E7FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEDEDEDFFEAEAEAFFDFDF
      DFFFDFDFDFFFEAEAEAFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFE6E6E6FFE2E2
      E2FFD8D8D8FF83B0D8FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF909090FF9090
      90FF909090FF909090FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF5F9DB0FF6DBDF2FF92C1
      EBFFB6BCC1FFD0D0D0FFD3D3D3FFD5D5D5FFD6D6D6FFD7D7D7FFD6D6D6FFB2BF
      CAFF90C2EFFF90C2EFFF90C2EFFF90C2EFFF90C2EFFF90C2EFFF90C2EFFF90C2
      EFFF90C2EFFF89C1F1FF3197B2FF000000FF000000FF000000FF000000FFA5B8
      C9FFEAEAEAFFEDEDEDFFEBEBEBFFD9D9D9FFEFEFEFFFEFEFEFFFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFDBDCDDFFECECECFFECECECFFEAEA
      EAFFACC0D2FF88C0F0FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FF89CFFAFF82C8F4FF9BC8
      F0FF98C2E9FF94B7D7FF94B7D7FF94B7D7FF94B7D7FF94B8D7FF95B9D9FF9AC6
      EDFF9BC8F0FF9BC8F0FF9BC8F0FF9BC8F0FF9BC8F0FF9BC8F0FF9BC8F0FF9BC8
      F0FF9BC8F0FF92C7F3FF3DA2AFFF000000FF000000FF000000FF000000FF9AC6
      EDFFA8B9C9FFE8E8E8FFA6B3C0FF91B0CDFFA2B4C4FFC8CDD2FFF2F2F2FFF4F4
      F4FFF4F4F4FFF2F2F2FFC9D0D6FFA5BCD0FF97C0E4FFB0C2D2FFEDEDEDFFB5C7
      D7FF99C5ECFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF000000FFD4EAFCFFBEE9FCFF95D4
      F6FF8FD1F6FF8FD0F6FF8FD0F6FF8FD0F6FF8FD0F6FF8FD0F6FF8FD0F6FF8FCF
      F7FF8FCFF6FF8FCFF6FF8FCFF6FF8FCFF6FF8FCEF6FF8FCEF6FF8FCDF6FF8FCD
      F6FF99D1F6FFB9E2F9FF6AB996FF000000FF000000FF000000FF000000FF0000
      00FF8ED0F5FF8BBFDEFF000000FF000000FF000000FF8CBFDCFFEDEDEDFFF8F8
      F8FFF8F8F8FFEDEDEDFF8DBDDBFF000000FF000000FF000000FF8BBDDEFF8ECC
      F5FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000008D8D8DFF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF8D8D8DFF000000FFFEFEFEFFD6ECFDFF9BDB
      FBFF91D8FBFF84CAF5FF569CEFFF458AF3FF4D91F3FF5797E9FF62A0E1FF67A4
      DEFF67A4DEFF62A0E1FF5797E8FF4B8EF3FF4487F3FF408EEEFF229BA2FF36AC
      9FFF4CB4A6FF55B578FF28A633FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF5C92D8FFE4E5E5FFF2F2
      F2FFF2F2F2FFE5E6E6FF5E93D7FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000000000FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF6870DDFF777BDAFF8687
      DDFF8787DDFF7376DAFF4859E3FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000000000000000000000000000FF000000FF8D8D8DFF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF8D8D8DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1672A6FF36AB55FF3CB350FF2D85
      77FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF156FA1FF30954AFF318741FF255F
      5CFF77777BFF868687FFACACACFFD3D3D3FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0555D7FF0E50CAFF305EB3FF4560B3FF454DCBFF4545
      D6FF4646D7FF4D4DD1FF6666CDFF9292CDFFC6C6D2FFE2E2E2FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF177798FF40B944FF74D275FF84DD87FF59C7
      5FFF267683FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0C4EBCFF1C4E73FF334C74FF4242ADFF524EC8FF5C5B
      D3FF6664D9FF6F69D5FF6D68B8FF717094FF959499FFCFCFCFFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0353D7FF0A4FCFFF384ECDFF4243D5FF3B3BD7FF3A3AD9FF3B3BDAFF3A3A
      DAFF3B3BDAFF3B3BDAFF3B3BD8FF3B3BD8FF4444D6FF7979D3FFCCCCD8FFE3E3
      E3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF4243D4FF3F3AC7FF49399AFF553970FF5A39
      5BFF5B3A5BFF553970FF4B3A98FF3F3AC8FF4444D5FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF6DBBABFF37B43AFF6FCD6DFF75D375FF79D97BFF86E0
      8BFF42B655FF1450A4FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0455DAFF546EA5FF3032A4FF3737C4FF5868D3FF688BD6FF6B9CD7FF6EA3
      D5FF72A7DBFF7BA7E3FF87A2EEFF949AFFFFA09CF9FF9491AFFFA0A0A1FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0354
      D9FF1F51D0FF4547D4FF3B3BDAFF3B3BDAFF3B3BDBFF3B3CDBFF3B3CDBFF3B3C
      DBFF3B3CDBFF3B3CDBFF3C3CDBFF3C3CDBFF3C3CDAFF3C3CD9FF4949D4FFACAC
      D7FFE3E3E3FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4039C0FF5A385CFF7F4212FFA35401FFBB6300FFC769
      00FFC76A00FFBB6300FFA45501FF7F4311FF5B385BFF423ABFFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3A9A92FF2FAF30FF66C662FF6BCB68FF59CA59FF63D265FF87E0
      8BFF77D87DFF319E6AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0751
      CAFF233897FF2E2BBDFF536BCAFF6EA8D5FF6DB7D6FF6CB9D8FF6EC1E9FF6186
      8AFF6DAFCCFF73C2E8FF74C0E4FF7AC1E8FF8EB9EBFFD5DCFFFFDCD7E1FF908F
      92FFE1E1E1FF000000FF000000FF000000FF000000FF000000FF0B5DDEFF2950
      CBFF3F40D9FF3C3CDBFF3C3CDBFF3C3DDBFF3C3DDBFF3C3DDCFF3C3DDCFF3C3D
      DCFF3C3DDCFF3C3DDCFF3C3DDCFF3C3DDBFF3D3DDBFF3D3DDBFF3D3DDBFF4141
      D9FF9D9DD8FFE5E5E5FF000000FF000000FF000000FF000000FF000000FF0000
      00FF3F3FD7FF4D388FFF7B4013FFB15C00FFCF6E00FFD37100FFDA7500FFE079
      00FFE17900FFDB7600FFD57200FFD06F00FFB25D00FF7C4012FF4E398DFF4040
      D7FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF108762FF26AA26FF5DBF57FF5AC154FF4BBF47FF54C753FF5ECE5FFF71D9
      74FF8EE593FF59C75FFF1F7E94FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0752CDFF2636
      9DFF2D2DC0FF6591CFFF6AB0C6FF5D868CFF67B2D9FF6AB2D9FF6FBCE8FF6288
      92FF6FAECEFF75BFE9FF77C2EDFF6EABC6FF6496A4FF7FC5EDFFC6DAF8FFCBC6
      F7FF8C8C93FFE4E4E4FF000000FF000000FF000000FF0B52D4FF204FC9FF3F40
      DAFF3D3DDCFF3D3EDCFF3E3FDDFF3E3FDBFF3E3FDDFF3D3EDCFF3D3EDCFF3D3E
      DDFF3D3EDDFF3D3EDCFF3D3EDCFF3E3FDDFF3E3FDCFF3E3FDDFF3E3EDCFF3F3F
      DCFF4141DAFFADADD9FFE7E7E7FF000000FF000000FF000000FF000000FF3F3F
      D8FF53397BFF8C4705FFBF6300FFC46700FFCA6B00FFD06E00FFD77300FFDF78
      00FFE07900FFD97400FFD16F00FFCC6C00FFC66800FFC06400FF8D4804FF543A
      7AFF4040D8FF000000FF000000FF000000FF000000FF000000FF000000FF0A85
      5BFF2AA927FF59BA50FF50B948FF3FB538FF48BC43FF53C450FF5CCC5CFF63D3
      66FF80DF85FF8CE592FF3FB552FF0B5EC1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1D3A99FF2A2B
      BFFF6297CDFF66B4D1FF65B0D8FF5D828AFF65A3C0FF6BB4DCFF6EB6DDFF70B8
      E0FF73BCE4FF75BEE7FF77C4F1FF68909CFF70ABC8FF73C1EDFF75BEE3FFADC1
      F4FFA09AF2FF9E9EA0FF000000FF000000FF000000FF0E50CDFF4143D8FF3E3E
      DDFF3E3FDDFF3F40DDFF7E7FDBFFC5C6E5FF7D7EDBFF3F40DDFF3E3FDDFF3E3F
      DEFF3E3FDDFF3E3FDDFF4041DDFF9091DCFFC4C5E5FF6C6DDAFF3F40DEFF3F3F
      DDFF3F3FDDFF4848D8FFD1D1DEFF000000FF000000FF000000FF000000FF4E3B
      94FF884605FFB75F00FFBA6100FFC26600FFC16500FFE1CAB2FFE2CCB4FFE3CD
      B4FFE3CDB4FFE2CCB4FFE1CCB4FFC26702FFC46700FFBC6200FFB96000FF8A46
      04FF4F3B92FF000000FF000000FF000000FF000000FF000000FF048255FF22A4
      1DFF52B447FF47B23DFF34AC2AFF3CB334FF47BA41FF69CA67FF84D783FF64D1
      65FF69D66CFF8BE48FFF77D97DFF2E9F67FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF1045A8FF2625B7FF9A9A
      C3FF9DC8D0FF5DA9D1FF62ACD2FF67AFD4FF68AED4FF6AB2D9FF6EB6DDFF70BA
      E2FF73BCE4FF75BEE7FF76BFE8FF76BDE5FF76C1EAFF76BFE8FF72C0EBFF7BC4
      EAFF9EA9F5FF7B77B0FFCACACAFF000000FF0A47C4FF394BC9FF3F3FDEFF4040
      DFFF4141DFFF8384DDFFF2F3F6FFF7F8F9FFF2F3F6FF8384DCFF4041DFFF3F40
      DEFF3F40DEFF4142DEFF9B9CDFFFF5F6F8FFF7F8F9FFEBECF3FF6E6FDCFF4041
      DFFF4040DFFF3F3FDEFF7777D4FFE9E9E9FF000000FF000000FF433DC9FF773E
      17FFAD5900FFB05B00FFB86000FFC06500FFBE6300FFDDC6AEFFE5DACEFFEEEE
      EEFFEEEEEEFFE5DACFFFDDC7B0FFBE6401FFC26600FFBA6100FFB25C00FFAF5A
      00FF783E14FF433DC6FF000000FF000000FF000000FF028054FF20A21BFF4BAE
      3EFF3FAB33FF2AA41EFF31AA26FF40B337FF64C45EFF79CE76FF9DDE9CFF81D7
      81FF61D163FF72DA76FF8EE593FF55C55BFF1F8296FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0846C3FF23388AFF5656BFFFC5BE
      A4FFB0A28AFFA2BCC5FF67AED3FF61ACD5FF68B0D5FF6AB2D8FF6CB5DCFF6FB9
      DFFF72BAE2FF74BDE5FF75BEE7FF76BFE9FF76BFE8FF75C0EAFF6FADCCFF6291
      9EFF82B4DBFF8280E7FF878691FF000000FF0E43BAFF4242DCFF4141DEFF4141
      E0FF4343E0FFE8E8F4FFF7F8F9FFF7F8F8FFF7F8F8FFF2F3F6FF8384DDFF4243
      E0FF4243DFFF9C9DE0FFF5F6F8FFF8F9F9FFF7F8F8FFF6F7F8FFCCCDF0FF4142
      E0FF4141E0FF4141DFFF4444DCFFCDCDDAFF000000FF000000FF5A3B68FF974C
      01FFA55400FFAD5900FFB55D00FFBC6200FFC16600FFC46700FFCFA374FFEEEE
      EEFFEEEEEEFFCFA579FFC46700FFC26600FFBE6300FFB65E00FFAF5A00FFA755
      00FF9A4E00FF5B3B65FF000000FF000000FF047063FF38AD35FF78C16EFF3FA8
      31FF219D12FF27A21AFF35AA2AFF5DBD55FF71C86EFF21A923FF7BCE7AFF9CDE
      9BFF6AD16AFF62D264FF7EDD82FF88E28DFF3CB24DFF0F65C7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF136765FF1D1DAEFFA3A1BFFFD5D2
      BEFFA19681FFC2B7A3FFC5CFCDFF77B3D1FF5FACD5FF68B0D6FF6BB4DAFF6EB7
      DEFF71B9E1FF72BBE3FF74BCE5FF74BDE6FF74BDE6FF74BDE6FF668F9BFF69A0
      B8FF72BEDFFF7A89E2FF625F9FFFCCCCCCFF2E5998FF4141DFFF4242E1FF4242
      E1FF4343E1FFB6B6F0FFF8F8F9FFF7F8F8FFF8F9F9FFF8F9F9FFF2F3F6FF8687
      DDFF9D9EE0FFF5F6F8FFF7F8F8FFF8F9F9FFF7F8F8FFF5F6F8FF9A9BECFF4243
      E1FF4142E1FF4142E1FF4242DFFF8E8ED0FF000000FF423FD5FF753E1AFF9F50
      00FFA25200FFA95600FFB05B00FFB75F00FFBD6300FFC26500FFCDA274FFEEEE
      EEFFEEEEEEFFCDA479FFC26600FFBE6400FFB86000FFB25C00FFAB5700FFA353
      00FFA05100FF773E17FF4441D4FF000000FF01920CFF8DCB85FF64B757FF42A9
      34FF2EA11FFF34A627FF58B74EFF52B94EFF26A827FF9FD4A0FF29AC2BFF93D9
      92FF8DD98CFF5ECD5EFF64D266FF83DE86FF70D475FF2C9E64FF000000FF0000
      00FF000000FF000000FF000000FF000000FF16673BFF3A3AB9FFD9D6CEFFD9D6
      CCFFD2CFC6FFCFCDC2FFD9D1C5FFD2D2CAFF8FBCD2FF60ADD6FF67B0D7FF6DB5
      DDFF6FB6DDFF70B8E0FF71BAE2FF72BAE3FF72BAE2FF71BAE1FF71BCE6FF6FBA
      E4FF6BB8DBFF779BD9FF5650C1FF939394FF3C51B5FF4242E1FF4343E2FF4343
      E2FF4343E2FF4949E2FFBEBEF1FFF8F8F9FFF9F9F9FFF8F9F9FFF8F9F9FFF4F5
      F6FFF6F7F8FFF8F9F9FFF8F9F9FFF8F9F9FFF6F7F9FFA6A7EEFF4546E2FF4243
      E2FF4243E2FF4243E2FF4242E1FF5C5CCCFF000000FF4C3EADFF884502FF984C
      00FF9E4F00FFA45300FFAB5700FFB15B00FFB76001FFBB6201FFCBA174FFEEEE
      EEFFEEEEEEFFCCA379FFBB6100FFB75F00FFB25C00FFAD5800FFA65400FF9F50
      00FF994C00FF8A4401FF4C3EABFF000000FF029400FF96CD8FFF6FBC64FF44A9
      36FF53B147FF6BBD61FF4EB549FF31AB32FFD2E4D2FF000000FF84CB85FF58BF
      58FF9BDC99FF74D172FF59CB59FF67D269FF84DD86FF4EC153FF1E8295FF0000
      00FF000000FF000000FF000000FF000000FF18574FFF5A58B7FFE6E2D4FFE3E2
      DBFFD3D1C7FFCCC9BEFFD0CDC3FFD8D2C7FFDDD7CBFFAAC7D2FF6CB5DCFF65A6
      C5FF6FAECEFF6CB8E1FF6EB8E1FF6FB9E2FF6FB9E2FF6EB8E1FF6DB7DFFF6CB6
      DEFF69B7DCFF72A6D7FF514ECAFF72727BFF4248D4FF4444E1FF4444E3FF4444
      E3FF4444E3FF4444E3FF4A4AE3FFBEBEF1FFF7F7F8FFF9F9F9FFF8F9F9FFF8F9
      F9FFF8F9F9FFF8F9F9FFF7F8F8FFF6F7F9FFA6A7EFFF4647E3FF4344E3FF4344
      E3FF4344E3FF4344E3FF4444E2FF4949D8FF000000FF553D84FF93510FFFA561
      1EFFAA6624FFB16D2AFFB7732EFFBC7731FFC07C35FFC37E37FFD7B592FFFCFC
      FCFFFBFBFBFFD6B492FFC1792CFFBD7427FFB56A1BFFA95906FFA15100FF9A4D
      00FF984C00FF8D4600FF563D82FF000000FF028F16FF7AC274FF95CD8CFF8BC9
      81FF8ECC86FF4CB548FF219D21FFD2DBD2FF000000FF000000FFE7F0E7FF31AD
      33FF80CF7EFF95D992FF5BC859FF57C856FF6ED26EFF7BD77DFF36B048FF1067
      C7FF000000FF000000FF000000FF000000FF1E5070FF716DB7FFE2DCC9FFD3CF
      C5FFDAD8CFFFD5D2C9FFCECBC0FFD1CEC4FFD6D3C9FFDED5C7FFB6C4C5FF6174
      70FF6C8C95FF6EADCCFF6EAAC8FF6FAAC9FF6FAAC9FF6EAAC8FF6EABC9FF68A4
      C0FF64A1BAFF6FA9D1FF4949CDFF67677BFF4445E2FF4444E4FF4545E4FF4545
      E4FF4545E4FF4545E4FF4545E4FF4C4CE4FFC0C0F2FFF9F9F9FFF9F9F9FFF8F8
      F8FFF8F9F9FFF8F9F9FFF7F8F9FFA8A9EFFF4748E4FF4445E4FF4445E4FF4445
      E4FF4445E4FF4445E4FF4444E4FF4646E2FF000000FF593C72FFA06227FFB376
      3CFFB3763CFFB5773CFFB8793CFFBB7B3CFFBE7D3CFFBF7E3BFFD8B696FFFFFF
      FFFFFFFFFFFFD9B99AFFBF7E3BFFBF7D3CFFBD7D3FFFBD8147FFB67B41FFAD6E
      30FFA25D18FF8F4700FF5A3C6FFF000000FF1C8B7AFF0A9416FF42AE3EFF4BB2
      47FF1CA21BFF04823FFF7190ACFF000000FF000000FF000000FF000000FFBDE1
      BEFF34B035FF97D893FF7BCF77FF4EC24BFF55C653FF74D274FF64CA65FF299E
      61FF000000FF000000FF000000FF000000FF2B5297FF7873BAFFD5CEB6FFBDB5
      A6FFD4D1C7FFDFDDD6FFD8D5CDFFD3D0C7FFD3D0C6FFC8C4B7FFC7BEADFF8578
      5CFF5C828CFF659FBAFF659CB4FF669CB5FF669CB5FF659BB4FF65A0BBFF608F
      9FFF5A848DFF6BA2C6FF4040CBFF163388FF4646E3FF4646E4FF4646E5FF4646
      E5FF4646E5FF4646E4FF4747E4FF4A4AE4FFA4A4E4FFF9F9F9FFF9F9F9FFF9F8
      F8FFF8F9F9FFF8F9F9FFF6F7F8FF898AE0FF4849E5FF4647E4FF4546E5FF4546
      E5FF4546E5FF4546E5FF4646E5FF4546E3FF000000FF5A3E74FFA3682FFFB77C
      44FFB77C44FFB77C44FFB87C44FFBA7E44FFBA7C42FFCB9E72FFE1CAB4FFFFFF
      FFFFFFFFFFFFDABB9EFFBE8044FFBD8044FFBB7E44FFB87C44FFB77C44FFB77C
      44FFB97E47FFAB743FFF5C3E71FF000000FF000000FF0A5BC1FF137D91FF0A7A
      80FF1370B8FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF59BD5BFF69C467FF9BD998FF6AC866FF55C251FF5DC75AFF79D277FF4ABC
      4DFF1D8394FF000000FF000000FF000000FF3D6F8FFF6B66BBFFE7E1D1FFEAE9
      E4FFE1E0DAFFDEDBD4FFDCDAD2FFDCD9D2FFD9D6CFFFD8D6CDFFE2DDD4FFABB4
      AEFF61A5C7FF62B0DAFF65B0D8FF65B0D8FF64B0D8FF63AFD8FF65B0D7FF68B3
      DBFF74BEE1FF7CABDAFF3331BFFF0F3C98FF474BDEFF4848E5FF4848E6FF4848
      E6FF4848E5FF4848E5FF4A4AE5FFA0A0E2FFF6F6F8FFF9F9F9FFF9F9F9FFF9F9
      F9FFF8F9F9FFF8F9F9FFF7F8F8FFF2F3F6FF8788E0FF4748E6FF4748E5FF4748
      E6FF4748E6FF4748E6FF4747E5FF4246DFFF000000FF58418BFFA0662EFFBB82
      4DFFBB824DFFBB824DFFBB824DFFBB824DFFB97F4AFFFDFDFCFFFFFFFFFFFFFF
      FFFFFFFFFFFFDBBEA4FFBD834CFFBC834DFFBB824DFFBB824DFFBB824DFFBB82
      4DFFBB824DFFA7713DFF584089FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFD5E8D6FF27A928FF98D694FF94D691FF5EC258FF5DC358FF71CB6DFF7BCF
      78FF32AD43FF1169C9FF000000FF000000FF7F9BA1FF5A57C8FFDDD4C6FFE6E5
      DEFFE4E3DDFFE1DFD9FFDDDBD4FFDBD9D2FFDBD9D1FFDCDBD3FFE4E0D8FFB9BD
      B8FF7DB1CBFF79B9DAFF77B6D7FF77B7D7FF79B8D8FF7EBBDAFF88C1E0FF94C6
      E1FFA2D2E2FF809ADCFF221EB2FF0E4DB2FF565DD4FF4848E6FF4949E7FF4949
      E7FF4949E6FF4B4BE6FFA0A0E3FFF6F6F8FFF8F8F8FFF9F9F9FFF8F8F8FFF9F9
      F9FFF7F8F8FFF7F8F8FFF8F9F9FFF8F9F9FFF2F3F6FF8889E1FF4A4AE7FF4949
      E6FF4949E7FF4949E7FF4747E5FF3949D8FF000000FF5044B9FF965E27FFBF88
      55FFBF8855FFBF8855FFBF8855FFBF8855FFBE8754FFCDA27CFFCCA27CFFCCA2
      7CFFCCA27CFFC49368FFBF8755FFBF8855FFBF8855FFBF8855FFBF8855FFBF88
      55FFBF8855FF9B6631FF5044B6FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF88C989FF45B544FF9FD89AFF7ECC79FF57BD50FF5BBF54FF77CB
      72FF63C461FF279B5EFF000000FF000000FFD3D2DAFF4B4BCEFFBCB3BEFFECE9
      DDFFCFCBC1FFD2CFC4FFE1DFD9FFDCDAD3FFDBD9D1FFDAD8D0FFE0DCD4FFBDC1
      BCFF90BCD2FF93C6E1FF94C5DFFF95C6DFFF97C7E0FF99C8E0FF96B6C2FF97C3
      D8FFA0D3E3FF5362D0FF1C269AFF0D5CD5FF8D8DD8FF4949E7FF4A4AE8FF4A4A
      E8FF4B4BE8FF9D9DE4FFF6F6F8FFF9F9F9FFF9F9F9FFF9F9F9FFF7F7F9FFACAC
      F2FFC1C1F3FFF8F8F9FFF9F9F9FFF9F9F9FFF9F9F9FFF3F3F6FF8585E3FF4B4B
      E8FF4A4AE8FF4949E8FF4848E6FF2951D8FF000000FF4948E2FF7C492DFFC38F
      5FFFC38E5DFFC38E5DFFC38E5DFFC38E5DFFC38E5DFFC38E5DFFC18D5EFFD7B9
      9FFFD7BAA0FFC08D5EFFC38E5DFFC38E5DFFC38E5DFFC38E5DFFC38E5DFFC38E
      5DFFC59466FF7F4C2DFF4847E0FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2FA630FF79C875FF99D493FF5FBE57FF53B94BFF5DBE
      55FF77C971FF43B744FF1C8394FF000000FFF7F7F7FF6460B7FF8D87CFFFD2C6
      ADFFB3AB9AFFDBD8D0FFE2E1DAFFDFDDD6FFDEDCD4FFDCDAD2FFE0DCD4FFBABE
      B9FF8AB8CEFF8CC2DDFF8FC2DDFF90C2DDFF91C3DDFF92C5E1FF8FB0BCFF90A9
      A7FF92BCDEFF2A2BC4FF1B4F73FF000000FFD9D9E8FF4A4AE6FF4B4BE9FF4B4B
      E9FF4D4DE9FFEBEBF5FFF8F8F9FFF9F9F9FFF8F8F8FFF7F7F9FFAAAAF2FF4E4E
      E9FF5252E9FFC0C0F3FFF7F7F8FFF9F9F9FFF9F9F9FFF7F7F8FFD1D1F3FF4C4C
      E9FF4B4BE9FF4A4AE9FF494AE4FF2E68D0FF000000FF000000FF61447CFFAF7A
      48FFC79466FFC79466FFC79466FFC79466FFC79466FFC69366FFDABFA8FFFFFF
      FFFFFFFFFFFFDBC0A9FFC69365FFC79466FFC79466FFC79466FFC79466FFC794
      66FFB68454FF63457AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF93AF94FF1DA51EFF9BD495FF87CC80FF4EB544FF4FB6
      45FF63BE5BFF6FC468FF32AD40FF287BCDFF000000FF9C876EFF6C6CE7FFC0B4
      BAFFEBE6D7FFE8E7E3FFE2E0DAFFE4E3DDFFE0DFD8FFDEDDD5FFE3DFD7FFBBBF
      B9FF89B8CEFF8BC1DDFF8CC0DBFF8EC3DFFF8EC2DDFF8FC2DCFF92C7E2FF9ED0
      DFFF5361D1FF252B97FF2F9F3BFF000000FFFEFEFEFF655EBEFF4B4BE9FF4C4C
      EAFF4D4DEAFFA7A7F1FFF7F7F9FFF7F7F8FFF6F6F8FFABABF2FF4E4EEAFF4C4C
      EAFF4C4CEAFF5252EAFFC1C1F4FFF8F8F9FFF7F7F8FFF6F6F8FF8E8EF0FF4D4D
      EAFF4C4CEAFF4A4AE9FF4166ADFF287BCCFF000000FF000000FF4D4ADFFF8754
      36FFCA9C72FFCB996EFFCB996EFFCB996EFFCB996EFFCA996DFFE2CBB6FFFFFF
      FFFFFFFFFFFFE3CCB8FFCA996DFFCB996EFFCB996EFFCB996EFFCB996EFFCCA0
      77FF8B5938FF4C49DCFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF298E59FF52B84FFF98D291FF68BE5FFF4BB1
      3FFF4DB342FF6BC062FF59BB55FF279B68FF000000FFC5A15CFF938BB3FF8F8C
      F0FFD0C5BEFFE6E1D6FFEBEAE7FFCAC4B8FFD7D4CBFFE2E0DAFFE5E2DBFFBDC2
      BEFF89B9D0FF8AC1DEFF8CC3E0FF88ABB8FF8DBCD4FF8FC5DFFF9BD1E0FF6B83
      D8FF1715B5FF4E8254FF000000FF000000FF000000FFB19264FF4F4FE6FF4C4C
      EAFF4D4DEBFF4F4FEBFFA8A8F2FFECECF8FFA6A6F2FF4F4FEBFF4D4DEBFF4D4D
      EBFF4D4DEBFF4D4DEBFF5252EBFFBABAF3FFEAEAF8FF9191F1FF4E4EEBFF4C4D
      EBFF4B4BEAFF4C4FE1FF54A860FF000000FF000000FF000000FF000000FF5E50
      B7FFA77649FFD1A57FFFCF9F76FFCF9F76FFCF9F76FFCF9F76FFD1A57FFFEAD7
      C6FFEBD7C6FFD1A57FFFCF9F76FFCF9F76FFCF9F76FFCF9F76FFD2A680FFAB7B
      4FFF6051B6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF1761C4FF119B1CFF86CA7FFF90CD88FF4EB1
      42FF47AE3BFF53B348FF6DBE63FF27AC2AFF000000FF000000FFC0A061FF938F
      D7FFB3B1F3FFD6CCC2FFDCD5C8FFB1A995FFE3E2DCFFE4E2DDFFEAE7E2FFB6B3
      A8FF85B4CAFF8AC2E0FF8CC4E3FF87AAB7FF89AAADFF9AD3E8FF6D87D7FF1614
      B5FF3C6767FF000000FF000000FF000000FF000000FFCDA860FF917D8BFF4E4E
      EAFF4D4DEBFF4E4EECFF4F4FECFF5050ECFF4F4FECFF4E4EECFF4E4EECFF4E4E
      ECFF4E4EECFF4E4EECFF4E4EECFF4F4FECFF5050ECFF4F4FECFF4D4EECFF4C4C
      EAFF4D4DE8FF4E8B7CFF6DBD63FF000000FF000000FF000000FF000000FF5050
      E9FF6F5DACFFB48960FFD6AF8CFFD2A67FFFD2A67FFFD2A67FFFD2A67FFFD2A6
      7FFFD2A67FFFD2A67FFFD2A67FFFD2A67FFFD2A67FFFD6B08DFFB78C64FF705D
      A9FF4F4FE7FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1C82A3FF2AA929FF96D08EFF7AC3
      70FF48AC3AFF50B043FF6ABC5FFF22A924FF000000FF000000FF000000FFEAE9
      EBFFC2C1DDFFEDEDF5FFD3CBC9FFD6CDBDFFEAE5D7FFEBE8DEFFF2F1E9FFAFA9
      96FF7FB4CDFF8CC6E3FF8FC9E0FF94CDE1FF8AB2D7FF505FD2FF1815B2FF5577
      79FF000000FF000000FF000000FF000000FF000000FF000000FFFEFEFEFF9E9D
      E5FF4F4FEBFF4F4FECFF4F4FEDFF4F4FEDFF4F4FEDFF4F4FEDFF4F4FEDFF4F4F
      EDFF4E4FEDFF4F4FEDFF4F4FEDFF4F4FEDFF4F4FEDFF4F4FEDFF4D4DECFF4E4E
      E9FF497F89FF50AF43FF000000FF000000FF000000FF000000FF000000FF0000
      00FF5454EBFF7166C5FFAE8873FFD5B394FFDBB797FFD6AC88FFD6AB87FFD6AB
      87FFD6AB87FFD6AB87FFD6AC88FFDBB797FFD6B495FFB28B75FF7366C3FF5353
      E9FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C933EFF60BB5AFF96CE
      8DFF8CCA83FF8BC981FF74C36EFF269E4FFF000000FF000000FF000000FF0000
      00FFF4F3F3FFDAD9DBFFC4C4EFFFAEACF2FFB2ABD3FFC4BCC8FFDAD1CDFFC1C4
      BFFF89B8CFFF85B1D6FF7999D7FF5867D2FF2B2CC2FF1C2D8BFF4B8654FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFEFE
      FEFFB3B2E8FF5555EAFF4F4FEDFF5050EEFF5050EEFF5050EEFF5050EEFF5050
      EEFF5050EEFF5050EEFF4F50EEFF4F4FEEFF4F4FEEFF4E4EEDFF4E51E3FF799C
      A9FF8BC982FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF5A5AEBFF6563E8FF927DACFFBE9F8FFFD9BDA1FFE0C3AAFFE3C7
      AEFFE3C7AFFFE0C4AAFFD9BCA0FFBE9F8FFF937FACFF6664E8FF5456E4FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF529FE4FF0C952FFF3CAF
      39FF50B64CFF42B240FF28A732FFD3EED4FF000000FF000000FF000000FF0000
      00FF000000FF000000FFDEDDDEFFB6B4D0FF8285DFFF7676E0FF6B69D4FF5F5F
      CDFF5052C8FF4544C4FF3938BEFF3542A8FF4C72B8FF5096D9FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFFE3E3F2FF7E7EE6FF5252ECFF5151EEFF4F4FEEFF5151EFFF5050
      EFFF5151EFFF5151EFFF4F4FEDFF4F50EDFF4F50ECFF4F66E4FF118840FF3CAE
      39FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF8080E6FF5B5BEDFF6B6AEEFF8179D8FF998BC7FFA596
      C0FFA697C1FF9A8DC7FF827AD7FF6969EDFF595AEDFF5168E4FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF438AD2FF56AA
      94FF6EC07FFFA3DAA4FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFCFCFCFFEAE9F1FF9FC0AFFF5F9998FF4F80
      B2FF446DBDFF3061ADFF1B5EC5FF1362CBFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFEFEFEFFDEDEEDFF9D9DEAFF656EDEFF5257E7FF5051
      EEFF5051EEFF4D52E9FF4354E4FF2F57D7FF145FCFFF2E7ADBFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF9E9EEAFF6971DFFF5A5FE8FF5B5C
      EFFF5C5DEFFF555AEAFF4859E5FF3158D7FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE0E0E0FFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFD0D0
      D0FFE6E6E6FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB5901EFF829826FF3CBF3AFF35C5
      3CFF35C53CFF3CBF3AFF5C7A1BFFC6C5C1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFDFDFD0200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA05FDFDFD0200000000000000FF5E3F1EFF5E3F1EFF5E3E
      1DFF5E3E1DFF01039CFF01039CFF01029CFF01029CFF01029CFF01029BFF0102
      9BFF01029BFF01019BFF01019BFF01019BFF5C3D1DFF5C3D1DFF5C3D1DFF5C3D
      1DFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB2911EFF3BC83CFF36D23EFF36D3
      3EFF36D23EFF36D23EFF38C63CFF15127BFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFAFAFA05F4F4F40BF1F1F10EEFEF
      EF10E8E8E817D7D7D728CECECE318E9DC2725574BEAD315DC7D2053DB9FF063C
      BAFF063ABBFF1743AAEC4B68AFB77786A889B9B9B946C1C1C13EC4C4C43BCECE
      CE31D7D7D728E6E6E619EFEFEF1000000000000000FF644521FFA6823AFFA682
      3AFFA6823AFF0A11A8FF4A79FFFF4A79FFFF4A79FFFF4A79FFFF4A79FFFF4A79
      FFFF4A79FFFF4A79FFFF4A79FFFF080EA6FFA5813AFFA5813AFFA5813AFF6243
      20FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000F5F3ED12907B3BCC785D0CFF7A5F0EFF7B60
      0FFF7A5F0EFF795E0DFF765C0BFFB9AC83810000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFAE921FFF38D13FFF37D23FFF38D4
      40FF38D440FF37D23FFF38CF3EFF2E2E64FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000B8C7EB482551C2DE043EC2FF0257E2FF0257E2FF0154DCFF0150D4FF014F
      D1FF0150D4FF0154DBFF0257E2FF0257E2FF053ABDFF2854C2DBC1CDED3F0000
      000000000000000000000000000000000000000000FF6A4A25FF593A1BFF593A
      1BFFA8843CFF1421B5FF4A79FFFF4A79FFFF4A79FFFF4A79FFFF4A79FFFF4A79
      FFFF4A79FFFF4A79FFFF4A79FFFF121EB3FFA8833CFF593A1BFF593A1BFF6949
      24FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000755B0AFF7D6310FF7E6310FF7E6310FF7E6310FF7E63
      10FF7E6310FF7E6310FF7E6310FF7E6310FF826A1EEDC7BC9C67000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB19420FF39D140FF39D541FF39D4
      41FF39D441FF39D441FF39D140FF494547FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000073ABBFC024FD6FF0258E3FF024ED2FF024ECEFF024ECEFF024DCDFF014E
      CEFF014DCDFF014DCCFF014DCCFF014FD0FF0257E2FF0349D1FF0A3AB8F90000
      000000000000000000000000000000000000000000FF715029FF000000FF593A
      1BFFAB863EFF1D31C2FFFFFFFFFFFBF8F3FFF9F6EFFFF8F4EBFFF7F2E8FFF6F0
      E4FFF5EEE0FFF3ECDCFFFFFFFFFF1B2DC0FFAA863EFF000000FF593A1BFF6F4F
      28FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000DCD6C23F7D620EFF836711FF836711FF836711FF836711FF836711FF8367
      11FF836711FF836711FF836711FF8D7324EA9B8540CCAD9A62A8B9AC83810000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB59621FF3AD241FF3AD542FF3AD5
      42FF3AD542FF3AD542FF3BD040FF7D6910FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000006E8B
      D6930355DFFF0255DDFF0250D3FF0652D0FF0A54D3FF0B57D5FF0451D1FF034D
      CBFF024ECEFF0252D8FF0251D5FF024FD0FF014FD1FF0255DDFF0353DCFF7A94
      DA88FAFCFE09000000000000000000000000000000FF77562CFFAD8940FFAD89
      40FFAD8940FF2740CFFFFFFFFFFF4A79FFFF4A79FFFF4A79FFFF4A79FFFF4A79
      FFFF4A79FFFF4A79FFFFFFFFFFFF253DCDFFAD8840FFAD883FFFAD883FFF7555
      2BFF000000FF000000FF000000FF000000FF000000000000000000000000EDE9
      DF21826610FF886B13FF886B13FF886B13FF886B13FF886B13FF886B13FF886B
      13FF886B13FF886C14FD93792AE6A28B46C7B2A068A3C5B78D7BD7CDB055E4DF
      CF3100000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB89821FF3BD242FF3BD643FF3BD6
      43FF3BD643FF3BD643FF3CD142FF9B8118FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000BBC8EC450A40BFFC0456
      DEFF0351D3FF0553D5FF105AD6FF0548BBFF416DB9FFA1A6AEFFD7D7D7FFDFDF
      DFFFE3E3E3FFD7DBE2FF6D91CEFF094BBCFF0354DAFF0252D6FF0250D3FF0351
      DAFF0A3CBAF9C1D0EF450000000000000000000000FF7D5C30FFB08B42FFB08B
      42FFB08B42FF304FDCFFFFFFFFFFFDFBF8FFFBF9F5FFFAF7F1FFF9F5EDFFF8F3
      E9FFF6F1E6FFF5EFE2FFFFFFFFFF2E4DDAFFAF8B41FFAF8B41FFAF8B41FF7B5B
      2FFF000000FF000000FF000000FF000000FF0000000000000000000000007C61
      0DFF8D7014FF8D7014FF8D7014FF8D7014FF8D7014FF8D7014FF8D7014FF8D70
      14FF8F7218FA99802EE2A8924CC2B8A66E9DCABC9276DBD2B64FEBE6D62CF7F6
      F01000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFBB9B22FF3CD344FF3CD644FF3CD6
      44FF3CD644FF3CD644FF3CD344FFBB9C22FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF224DBCFF0856DBFF0254
      DAFF0555D8FF0855D6FF0855D6FF0551D2FF0F41AFFFA7A7A7FFC4C4C4FFD6D6
      D6FFDFDFDFFFE4E4E4FFE5E5E5FFE0E1E4FF084BBEFF0354D8FF0353D8FF0253
      D9FF044BD2FF3C68CCD60000000000000000000000FF836234FFB28D44FFB28D
      44FFB28D44FF3A5FE9FFFFFFFFFF4A79FFFF4A79FFFF4A79FFFF4A79FFFF4A79
      FFFF4A79FFFF4A79FFFFFFFFFFFF385CE7FFB28D43FFB28D43FFB28D43FF8261
      33FF000000FF000000FF000000FF000000FF0000000000000000B4A67A8A9375
      16FF937516FF937516FF937516FF937516FF997A17FFAC8919FF917211FF795E
      0BFF937A2DDDB8A051BDC9B57697CFC29870DFD6BB4AEEE9DA28F9F8F40C0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFBE9E23FF3DD445FF3DD746FF3DD7
      46FF3DD746FF3DD746FF3ED445FFBE9F23FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0A4CCDFF0557DDFF0353
      D8FF0A57D7FF0855D6FF0855D6FF0655D5FF0551D3FF0E41B0FFA9A9A9FFC3C3
      C3FFD6D6D6FFE3E3E3FFE4E4E4FFE5E5E5FF6D90CFFF074BBEFF0455DBFF0352
      D6FF0353DAFF0A46C7FF0000000000000000000000FF8A6838FFB59046FFB590
      45FFB59045FF436EF6FFFFFFFFFFFEFEFEFFFDFCFAFFFCFAF7FFFBF8F3FFF9F6
      EFFFF8F4EBFFF7F2E7FFFFFFFFFF416BF3FFB48F45FFB48F45FFB48F45FF8867
      37FF000000FF000000FF000000FF000000FF0000000000000000876A10FF9A7A
      17FF9A7A17FF9A7A17FF9A7A17FFA28118FF947412FFDFD9C73A000000000000
      00000000000000000000DBD5C041E8DFC045F1ECDF23FBFAF609000000000000
      000000000000000000000000000000000000FEFEFEFF856636FFA78A42FFA78A
      41FFA2843CFF76600EFFC9A525FFC9A626FFB4A126FF3ED546FF3ED847FF3ED8
      47FF3ED847FF3ED847FF3ED546FFB5A227FFC19F24FFC19F24FFA0831AFF8069
      11FF9D9362FFBBB798FFDEDBCBFFF7F6F2FFB2C2EAFF0B5DDFFF0456DDFF0D5E
      DFFF0449BFFF3787E8FF1564DBFF0856D6FF0856D6FF0756D6FF0E42B2FFA5A5
      A5FFA9A9A9FFD7D7D7FFE0E0E0FFE5E5E5FFE7E7E7FFE5E6E7FF0E4FC0FF0557
      DDFF0455DBFF0755D9FFC4D0EE3C00000000000000FF906E3BFFB79247FFB792
      47FFB79247FF4A79FFFF4978FEFF4978FEFF4978FEFF4978FEFF4978FEFF4978
      FEFF4978FEFF4978FEFF4978FEFF4978FEFFB79247FFB79247FFB79247FF8E6D
      3AFF000000FF000000FF000000FF000000FF00000000E6E2D32DA07F19FFA07F
      19FFA07F19FFA07F19FFA28119FF997914FFF7F6F20D00000000000000000000
      0000000000000000000000000000F4F2EC13FDFCF90600000000000000000000
      000000000000000000000000000000000000B1DDB4FF41C245FF3EC946FF3EC9
      46FF3EC946FF3DC846FF3EC945FF3FCA45FF3ECC45FF3FD847FF3FD848FF3FD8
      48FF3FD848FF3FD848FF3FD847FF3ECC45FF3ECA45FF3EC945FF3EC945FF3EC9
      45FF3EC945FF3EC845FF40C243FF5F7C1FFF6B8BD7FF0658DDFF0658DEFF0759
      DEFF648CD1FF0E57D1FF3989EAFF0957D7FF0957D7FF0957D7FF0551D3FF0D42
      B4FFA5A5A5FFC5C5C5FFD9D9D9FFE2E2E2FFE8E8E8FFE9E9E9FF8EA9D8FF0558
      DEFF0557DEFF0457DDFF7A96DB8700000000000000FF96743FFFBA9449FFBA94
      49FFBA9449FFBA9449FFBA9449FFBA9449FFBA9449FFBA9449FFBA9449FFBA94
      49FFBA9449FFBA9449FFBA9449FFB99449FFB99449FFB99449FFB99449FF9473
      3EFF000000FF000000FF000000FF000000FF00000000A79663A2A7851BFFA785
      1BFFA7851BFFA7851BFFAF8B1CFFAA9A699C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004BD454FF40D748FF40D749FF40D8
      48FF40D848FF40D848FF3FD748FF40D848FF40D848FF40D848FF41D949FF41D9
      49FF41D949FF41D949FF40D848FF40D848FF40D848FF40D848FF40D848FF40D8
      48FF40D848FF40D848FF41D748FF48CE46FF2C5ECAFF0558DEFF0859DDFF0B5B
      DEFFE3E5E9FFE5E7E9FF0E57D1FF1766DDFF0958D8FF0958D8FF0858D8FF0551
      D3FF0D42B5FFA9A9A9FFC5C5C5FFDADADAFFE9E9E9FFEAEAEAFFE8E9EAFF0658
      DEFF0658DEFF0558DEFF3A66CCC900000000000000FF9C7A43FFBC974BFFBC97
      4BFFF0D29AFFF0D29AFFD4CCBDFFD4CCBDFFD4CCBDFFD4CCBDFFD4CCBDFFD4CC
      BDFFD4CCBDFFD4CCBDFFD4CCBDFFD4CCBDFFBC964BFFBC964BFFBC964BFF9B78
      42FF000000FF000000FF000000FF000000FF00000000836C23E4AE8B1CFFAE8B
      1CFFAE8B1CFFAE8B1CFFAF8C1CFFE6E1D22E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041D84BFF41D84AFF42D94AFF42D9
      4AFF42D94BFF42D94BFF42D94AFF42D84AFF42D94AFF42D94AFF42D94AFF42D9
      4AFF42D94AFF42D94AFF42D94AFF42D94AFF42D94AFF42D94AFF42D94AFF42D9
      4AFF42D94AFF42D94AFF41D94AFF41D84AFF0746C6FF095BDFFF0F5EDEFF0E58
      D1FFEAEAEAFFECECECFFEFEFEFFF0E57D1FF4290EBFF1968DEFF0A59D9FF0A59
      D9FF0959D9FF0C43B8FFA5A5A5FFA9A9A9FFDDDDDDFFE6E6E6FFEAEAEAFF0755
      D4FF085BE0FF075ADFFF0643C4FF00000000000000FFA38046FFBF994DFFBF99
      4DFF705725FFAC8C4EFF999999FFDFDFDFFFD2D2D2FFC4C4C4FFB7B7B7FFA9A9
      A9FF9B9B9BFF8E8E8EFF828282FFD4CCBDFFBE994DFFBE994DFFBE994DFFA17E
      45FF000000FF000000FF000000FF000000FF000000FF7A6115FFB7921EFFB691
      1EFFB6911EFFB6911EFFB6911EFFC7C6C2FF000000FF000000FF000000FF0000
      00FFAD9E6E96755B0AFF755B0AFF755B0AFF755B0AFF755B0AFF755B0AFF755B
      0AFF755B0AFF755B0AFF000000000000000043DA4CFF43D94CFF43DA4BFF43DA
      4BFF42D94BFF43DA4BFF43DA4CFF43DA4BFF43DA4BFF43DA4BFF43DA4BFF43DA
      4BFF43DA4BFF43DA4BFF43DA4BFF43DA4BFF43DA4BFF43DA4BFF43DA4BFF43DA
      4BFF43DA4BFF43DA4BFF44D94BFF44D84BFF0848C6FF0A5CDFFF1160DFFF0E55
      CCFFE8E8E8FFECECECFFF0F0F0FFECEEF0FF0E57D1FF4692ECFF0A5ADAFF0A5A
      DAFF0A5ADAFF0551D3FF0B42B9FFA5A5A5FFC6C6C6FFDBDBDBFFE4E4E4FF0854
      D1FF0A5CE0FF085BE0FF0745C4FF00000000000000FFA9864AFFC29B4FFFC29B
      4FFF705725FFAC8C4EFF999999FFE5E5E5FFDBDBDBFFCECECEFFC0C0C0FF7057
      25FF7D612AFF785E28FF8A8A8AFFD4CCBDFFC19B4FFFC19B4FFFC19B4EFFA784
      49FF000000FF000000FF000000FF000000FF000000FF7D6113FFC29B21FFBD97
      20FFBD9720FFBD9720FFBD9720FF302A6BFF000000FF000000FF000000FF0000
      00FFAD9E6E96DEB126FFBD9720FFBD9720FFBD9720FFBD9720FFBD9720FFBD97
      20FFBD9720FFBD9720FF00000000000000004FDC58FF43D84DFF45D94EFF44DA
      4DFF43D94DFF44DA4DFF44DA4EFF44DA4EFF43D94DFF44DA4DFF44DA4DFF44DA
      4DFF44DA4DFF44DA4DFF44DA4DFF44DA4DFF44DA4DFF44DA4DFF44DA4DFF44DA
      4DFF44DA4DFF44DA4DFF44D84CFF4DD64AFF094BC7FF0B5DE0FF1262DFFF1259
      CEFFE0E0E0FFEAEAEAFFF0F0F0FFF2F2F2FFEDEFF1FF0E57D1FF1C6BE0FF0B5B
      DBFF0B5BDBFF0A5BDBFF0551D3FF0B43BAFFA8A8A8FFBBBBBBFFC7C7C7FF125B
      D2FF0E60E0FF0A5DE1FF0847C5FF00000000000000FFAF8C4EFFC49E51FFC49E
      51FF705725FFAC8C4EFF999999FFE4E4E4FFE3E3E3FFD7D7D7FFCACACAFF7057
      25FF87692EFF82652CFF949494FFD4CCBDFFC49D50FFC49D50FFC49D50FFAD8A
      4DFF000000FF000000FF000000FF000000FF000000FF654813FFCAA123FFC49C
      22FFC49C22FFC49C22FFC49C22FF876A0FFF000000FF000000FF000000FF0000
      00FF00000000AD9E6E96E6B728FFC49C22FFC49C22FFC49C22FFC49C22FFC49C
      22FFC49C22FFC49C22FF0000000000000000B5EAB8FF48D44DFF45D64DFF45D7
      4EFF44D54DFF45D64DFF45D74FFF46D950FF45D84FFF43D94DFF45DB4EFF45DB
      4EFF45DB4EFF45DB4EFF45D94DFF45D84DFF46D84DFF46D74DFF46D74DFF46D7
      4DFF46D74DFF46D74DFF4BD64CFFA3BE35FF1368B3FF0B5FE2FF1262E1FF2069
      DDFFB0B1B1FFE0E0E0FFECECECFFF5F5F5FFF5F5F5FFF6F6F6FF0E57D1FF509A
      F0FF1E6EE1FF0C5DDCFF0C5DDCFF0B5DDCFF0943BDFFA6A7A7FFABACACFF286B
      D6FF1564E0FF1363E2FF4579D5C000000000000000FFB59252FFC7A053FFC7A0
      53FF705725FFAC8C4EFF999999FFE2E2E2FFE5E5E5FFE1E1E1FFD3D3D3FF7057
      25FF917131FF8C6D30FF9D9D9DFFD4CCBDFFC6A052FFC6A052FFC39D52FFB490
      51FF000000FF000000FF000000FF000000FF000000FF000000FFC39C20FFCAA2
      23FFCAA223FFCAA223FFCAA223FFCAA223FF907224FF000000FF000000FF0000
      00FF0000000000000000AD9E6E96D4AA25FFCAA223FFCAA223FFCAA223FFCAA2
      23FFCAA223FFCAA223FF0000000000000000FEFEFEFFB09050FFB99B4FFFB89A
      4FFF685725FF9F884AFF8E948FFFD1D7D2FFC6D7C7FF46D94FFF45DA4FFF46DB
      4FFF46DB4FFF46DB4FFF46D94EFFC6B22CFFD2AF29FFD2AF29FFD2AF29FFD2AF
      29FFD2AF29FFD3B02AFFDDB42AFFE3B62AFF228A96FF0F62E3FF1062E3FF1D68
      E0FF7990B8FFBEBEBEFFE7E7E7FFF3F3F3FFF7F7F7FFF8F8F8FFF4F5F7FF0E57
      D1FF549CF0FF0D5EDDFF0D5EDDFF0D5EDDFF0551D3FF0943BDFF6A86B6FF3573
      D6FF1664E1FF2776E7FF7DA2E28700000000000000FFBC9855FFC9A355FFC9A3
      55FF705725FFAC8C4EFF999999FFDEDEDEFFE3E3E3FFE5E5E5FFDDDDDDFF7057
      25FF705725FF705725FFA7A7A7FFD4CCBDFFC9A254FFC7A054FFBB9754FFD3BC
      94FF000000FF000000FF000000FF000000FF000000FF000000FF7F630DFFDAAF
      27FFD1A725FFD1A725FFD1A725FFD1A725FFD1A725FF8A6C10FFCBC1A3FFF8F7
      F3FFE6E1D22EAA9A699CAD891AFFD1A725FFD1A725FFD1A725FFD1A725FFD1A7
      25FFD1A725FFD1A725FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFD1D7D1FF49D952FF47DC51FF46DB
      50FF47DC50FF47DC50FF49D94FFFE0BB2BFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3CB777FF1E6FE8FF1265E5FF1868
      E3FF1456C7FFB1B1B1FFC7C7C7FFEFEFEFFFF5F5F5FFF8F8F8FFF9F9F9FFF6F7
      F9FF0E57D1FF206FE3FF0D5EDEFF0D5EDEFF0C5EDEFF0551D3FF0348C4FF236C
      DDFF1D6CE5FF2D7AE6FFCBDAF43600000000000000FFC29E59FFCCA556FFCCA5
      56FF705725FFAC8C4EFF999999FFDADADAFFE0E0E0FFE4E4E4FFE4E4E4FFD9D9
      D9FFCCCCCCFFBEBEBEFFB1B1B1FFD4CCBDFFCAA456FFC39E58FFD7C096FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFAF8A3FFFDFB2
      27FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC
      26FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC26FFD7AC
      26FFD7AC26FFD7AC26FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFCFD5CFFF4ADA53FF49DC52FF49DC
      52FF49DC51FF48DB51FF49D84FFFE4D431FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C5DD4FF3985EEFF1D6F
      E8FF256EDFFF094FC8FF738DBAFFB2B2B2FFCDCDCDFFE4E4E4FFEEEEEEFFEFEF
      EFFFEFEFEFFF0E57D1FF5CA2F3FF2272E4FF0E60DFFF0E60DFFF256DDBFF2776
      E8FF3984EBFF0D5CD0FF0000000000000000000000FFC8A45DFFF0D29AFFF0D2
      9AFFA48039FFF0D29AFFD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9A35BFFDBC499FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA091
      61FFF7C72DFFDCB128FFDCB128FFDCB128FFDCB128FFDCB128FFDCB128FFDCB1
      28FFDCB128FFDCB128FFDCB128FFDCB128FFDCB128FFDCB128FFDCB128FFDCB1
      28FFDCB128FFDCB128FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFEBF1ECFF4BDA55FF4ADD53FF4ADD
      53FF4ADD53FF4ADD53FF4AD953FF76640FFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF2768C0FF1466DFFF4992
      F0FF1D6DE5FF246CDCFF0950C9FFB1B1B1FFAFAFAFFFB1B1B1FFC7C7C7FFCCCC
      CCFFCDCDCDFFBDBDBEFF0E57D1FF5FA4F3FF0E61E0FF2E72DAFF2972E0FF5099
      F1FF1362D7FF3A7BD9CF0000000000000000000000FFCEA960FFCEA960FFCEA9
      60FFA48039FFCEA960FFD2D2D2FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFDFC89BFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF785E0BFFFFCE2FFFE1B529FFE1B529FFE1B529FFE1B529FFE1B529FFE1B5
      29FFE1B529FFE1B529FFE1B529FFE1B529FFE1B529FFEABC2BFFDABA27FFFFD5
      30FFE1B529FFE1B529FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFD4DAD5FF4CDB56FF4BDD55FF4BDD
      55FF4BDD55FF4BDD55FF4CDB56FFCBCDC1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF9F9573FF0E61D1FF2172
      E6FF176CE9FF1E6FE7FF2872E1FF1759CAFF8094B8FFAFAFAFFFB4B4B4FFB2B2
      B2FFB2B2B2FFB4B5B5FF6F8ABAFF044ECBFF327BE3FF2873E3FF1D6EE7FF1D6E
      E0FF1363D4F9CBDDF5360000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF725914FFF0D730FFF3C42CFFE6B92AFFE6B92AFFE6B92AFFE6B9
      2AFFE6B92AFFE6B92AFFE6B92AFFE7BA2AFFFFD530FFA48B19FFE3DECE33AD9E
      6E96FFD931FFE6B92AFF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFEBF1ECFF4DDC57FF4CDE56FF4CDE
      56FF4CDE56FF4CDE56FF4DDB57FFECF1ECFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF5671
      89FF2677E8FF5CA2F5FF287AEEFF2174EBFF2977E8FF2E78E4FF1A61D4FF195E
      D1FF1D63D5FF3077E2FF2D79E7FF2373E9FF2E7FEFFF5CA3F4FF2072E3FF8AB3
      EA7B00000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFF6F5F0FF7F650DFFE7D830FFFFDF33FFF7C72DFFEABD
      2BFFEEC02CFFFFD030FFFFEA35FFBCAA22FFB4A67A8A00000000000000000000
      0000AD9E6E96FFE234FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFECF1ECFF4EDC57FF4DDF57FF4DDE
      57FF4DDE57FF4DDE57FF4EDC57FFECF2EDFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1468D5FF1A6DE1FF519BF3FF2478EFFF1C72EEFF2074EDFF2677ECFF2778
      EBFF2778ECFF2275EDFF1D72EEFF277AEEFF4F98F2FF166BDDFF176AD7F60000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC1B591FF907B3BFF755B
      0AFF765C0CFCA2915AABEDE9DF21000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFF7F9F7FF54DE5DFF4EDE58FF4DDF
      57FF4EDF58FF4EDE58FF55DD5DFFF7F9F7FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC6DAF5FF3C82DEFF0E65D8FF569EF4FF579FF6FF3E8CF3FF1D74F1FF1E74
      F1FF1D73F0FF408EF3FF5AA1F6FF549CF3FF0F66D7FF4185DEFFCFE0F6330000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFEFEFEFFB9ECBCFF58E062FF4EDF
      58FF4FDF59FF58E062FFB9EDBCFFFEFEFEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF49C779FF2EA297FF1D81BAFF0F67D7FF0F67
      D7FF0F67D7FF478AE0FF88B3EBFFD4E4F7FF000000FF000000FF000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C3FFFFFCC33FFFFFFFFFFFFFC0FFFFF8
      001FFFFFFFFFFFFFC03FFFF0000FF8001FFFFFFFC00FFFF0000FC00003FFFFFF
      C007FFC00003C00003018080C007FF800001E00003018080C003FF800001E000
      07018080E001FF800001F00007018080E001FF800001F0000F018080E000FF80
      0001F8001F018080F0007F000700FE007F018080F0007F000F00FE007F018080
      F8003F000E00FE007F018080FC001F000E00FC003F018080FC000FC00E01FC00
      3F0100FFFE000F800001FC003F0100FFFF0007800001FC003F010FFFFF000380
      0001FC003F01FFFFFF8003800001FC003F01FFFFFFC003F80001FC003F01FFFF
      FFC003F00009FC003FFFFFFFFFE007F0000FFE007FFFFFFFFFF01FF8421FFF00
      FFFFFFFFFFF03FFFC3FFFFFFFFFFFFFFE00007FF81FFFFFFFFC00003800001FF
      81FFFFFFFF800001800001F181CFFFFFFF000000000000E00007FFFFFF000000
      000000E00003FFFFFF000000000000C00003C30003000000000000E00007C300
      0306DB60000000E00007FFFFFF06DB60000000E00007FFFFFF06DB6000000000
      0000FFFFFF07FFE0000000001800C3000307FFE0000000003C00C3000307FFE0
      000000003C00C3000307FFE0800000001800FFFFFF07FFE0800000000000FFFF
      FF07FFE0800000E00007FFFFFF07FFE0800000E00007C30003007E00800000E0
      0003C30003007E00800000C00003FFFFFF000000800001E00003FFFFFF000000
      800001E00007FFFFFF000000800001F381CFFFFFFF000000800001FF81FFFFFF
      FF800001FFFFFFFF81FFFFFFFFC00003FF0FFFFF00FFFC003FFFFFFFFE07FFFC
      003FF0000FFE007FFC03FFF0001FE00007FC003FF803FFE00007C00003F0000F
      F001FFC00003800001E00007E000FFC00003800001E00007C000FF8000010000
      00C0000380007F000001000000C0000300003F00000000000080000100003F00
      000000000080000100401F00000000000080000100C00F000000000000800001
      01E00F00000000000080000187F007000000000000800001FFF0030000000000
      00800001FFF803000000000000800001FFFC01000001000000C00003FFFC0080
      0001000000C00003FFFE00800003800001E00007FFFE00C00007800001E00007
      FFFF00E0000FC00003F0000FFFFF80F0001FE00007F8001FFFFF80FC003FF000
      0FFC003FFFFFC3FE00FFFC003FFF00FF000007FFFFFFFF00FF7FFFF980000FFF
      FFFFFF00FF00000180000FFE00FFFF00FFF0001F80000FFC003FFF00FFF0001F
      A0004FF0001FFF00FFE0000780000FE0000FFF00FF80000380000FE0000FFF00
      FF80000380000FC0001FFF00FF80000380000FC03C3F00000000000180000F80
      7E7F00000000000180000F80FFFF00000000000180000F80FFFF000000000001
      80000F80F00300000000000180000F80F00300000000000180000F80F8030000
      0000000180000FC07C0300000000000180000FC00003FF00FF00000180001FC0
      0003FF00FF80000380003FE00003FF00FF80000380007FF00003FF00FF800003
      FFFFFFF80003FF00FFE0000FFFFFFFFC0073FF00FFF0001FFFFFFFFF81FFFF00
      FFF0001FFFFFFFFFFFFFFF00FFFE00FF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Left = 48
    Top = 360
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 49238
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 49232
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 49219
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Caption = 'Action4'
      ShortCut = 49228
      OnExecute = Action4Execute
    end
  end
  object Timer1: TTimer
    Left = 200
    Top = 392
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 2000
    Host = '45.155.81.22'
    IPVersion = Id_IPv4
    Port = 7000
    ReadTimeout = 2000
    Left = 24
    Top = 192
  end
  object PopupMenu4: TPopupMenu
    Left = 144
    Top = 224
    object N28: TMenuItem
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
    end
  end
  object PopupMenu5: TPopupMenu
    Images = ImageList2
    Left = 432
    Top = 264
    object TxPowerdBm1: TMenuItem
      Caption = 'TxPower(dBm)'
      ImageIndex = 15
      OnClick = TxPowerdBm1Click
    end
    object OIDs1: TMenuItem
      Caption = 'OIDs'
      ImageIndex = 14
      OnClick = OIDs1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 296
    Top = 368
  end
end
