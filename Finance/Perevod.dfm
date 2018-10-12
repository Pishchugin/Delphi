object Perev: TPerev
  Left = 379
  Top = 170
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1074#1086#1076' '#1089#1088#1077#1076#1089#1090#1074
  ClientHeight = 220
  ClientWidth = 327
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 72
    Height = 13
    Caption = #1057#1095#1077#1090'-'#1080#1089#1090#1086#1095#1085#1080#1082
  end
  object Label2: TLabel
    Left = 8
    Top = 58
    Width = 85
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1087#1077#1088#1077#1074#1086#1076#1072
  end
  object Label3: TLabel
    Left = 8
    Top = 82
    Width = 24
    Height = 13
    Caption = #1050#1091#1088#1089
  end
  object Label5: TLabel
    Left = 8
    Top = 106
    Width = 83
    Height = 13
    Caption = #1057#1095#1077#1090'-'#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100
  end
  object Label6: TLabel
    Left = 8
    Top = 156
    Width = 84
    Height = 13
    Caption = #1048#1090#1086#1075#1086#1074#1072#1103' '#1089#1091#1084#1084#1072
  end
  object Label8: TLabel
    Left = 8
    Top = 132
    Width = 49
    Height = 13
    Caption = #1050#1090#1086'/'#1050#1086#1084#1091
  end
  object Label4: TLabel
    Left = 8
    Top = 34
    Width = 77
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1077#1088#1077#1074#1086#1076#1072
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 8
    Width = 209
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
    OnChange = ComboBox1Change
    OnKeyDown = FormKeyDown
    Items.Strings = (
      #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
      #1042#1072#1083#1102#1090#1085#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
      #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1073#1072#1085#1082')'
      #1042#1072#1083#1102#1090#1085#1099#1081' '#1089#1095#1077#1090' ('#1073#1072#1085#1082')'
      #1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1089#1095#1077#1090' (Yandex-'#1076#1077#1085#1100#1075#1080')')
  end
  object ComboBox2: TComboBox
    Left = 112
    Top = 104
    Width = 209
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
    OnChange = ComboBox1Change
    OnKeyDown = FormKeyDown
    Items.Strings = (
      #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
      #1042#1072#1083#1102#1090#1085#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
      #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1073#1072#1085#1082')'
      #1042#1072#1083#1102#1090#1085#1099#1081' '#1089#1095#1077#1090' ('#1073#1072#1085#1082')'
      #1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1089#1095#1077#1090' (Yandex-'#1076#1077#1085#1100#1075#1080')')
  end
  object Edit1: TEdit
    Left = 112
    Top = 56
    Width = 110
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyDown = FormKeyDown
  end
  object Edit2: TEdit
    Left = 112
    Top = 80
    Width = 110
    Height = 21
    TabOrder = 3
    Text = '0'
    OnKeyDown = FormKeyDown
  end
  object Edit4: TEdit
    Left = 112
    Top = 152
    Width = 81
    Height = 21
    TabOrder = 4
    Text = '0'
    OnKeyDown = FormKeyDown
  end
  object Button1: TButton
    Left = 96
    Top = 184
    Width = 129
    Height = 25
    Caption = #1055#1088#1086#1080#1079#1074#1077#1089#1090#1080' '#1086#1087#1077#1088#1072#1094#1080#1102
    TabOrder = 5
    OnClick = Button1Click
    OnKeyDown = FormKeyDown
  end
  object Button5: TButton
    Left = 200
    Top = 152
    Width = 22
    Height = 22
    Caption = '='
    TabOrder = 6
    OnClick = Button5Click
    OnKeyDown = FormKeyDown
  end
  object ComboBox3: TComboBox
    Left = 112
    Top = 128
    Width = 209
    Height = 21
    ItemHeight = 13
    Sorted = True
    TabOrder = 7
    OnKeyDown = FormKeyDown
  end
  object DateTimePicker1: TDateTimePicker
    Left = 112
    Top = 32
    Width = 111
    Height = 21
    CalAlignment = dtaLeft
    Date = 38567.8571851389
    Time = 38567.8571851389
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 8
    OnKeyDown = FormKeyDown
  end
end
