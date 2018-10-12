object PrRas: TPrRas
  Left = 471
  Top = 111
  BorderStyle = bsDialog
  Caption = 'PrRas'
  ClientHeight = 196
  ClientWidth = 279
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 36
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 58
    Width = 59
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Label3: TLabel
    Left = 8
    Top = 84
    Width = 34
    Height = 13
    Caption = #1057#1091#1084#1084#1072
  end
  object Label4: TLabel
    Left = 8
    Top = 110
    Width = 55
    Height = 13
    Caption = #1050#1090#1086' / '#1050#1086#1084#1091
  end
  object Label5: TLabel
    Left = 8
    Top = 14
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label6: TLabel
    Left = 8
    Top = 134
    Width = 24
    Height = 13
    Caption = #1050#1091#1088#1089
  end
  object Edit1: TEdit
    Left = 96
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 0
    Text = '0'
    OnKeyDown = FormKeyDown
  end
  object Edit2: TEdit
    Left = 96
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 1
    Text = '1'
    OnKeyDown = FormKeyDown
  end
  object Edit3: TEdit
    Left = 96
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyDown = FormKeyDown
  end
  object DateTimePicker1: TDateTimePicker
    Left = 96
    Top = 8
    Width = 175
    Height = 21
    CalAlignment = dtaLeft
    Date = 38562.8903061574
    Time = 38562.8903061574
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 3
    OnKeyDown = FormKeyDown
  end
  object Button1: TButton
    Left = 248
    Top = 32
    Width = 22
    Height = 22
    Caption = '='
    TabOrder = 4
    OnClick = Button1Click
    OnKeyDown = FormKeyDown
  end
  object Button2: TButton
    Left = 248
    Top = 56
    Width = 22
    Height = 22
    Caption = '='
    TabOrder = 5
    OnClick = Button2Click
    OnKeyDown = FormKeyDown
  end
  object Button3: TButton
    Left = 248
    Top = 80
    Width = 22
    Height = 22
    Caption = '='
    TabOrder = 6
    OnClick = Button3Click
    OnKeyDown = FormKeyDown
  end
  object Edit5: TEdit
    Left = 96
    Top = 128
    Width = 57
    Height = 21
    ReadOnly = True
    TabOrder = 7
    Text = '28,20'
    OnKeyDown = FormKeyDown
  end
  object Button4: TButton
    Left = 104
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 8
    OnClick = Button4Click
    OnKeyDown = FormKeyDown
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 104
    Width = 177
    Height = 21
    ItemHeight = 13
    PopupMenu = PopupMenu1
    Sorted = True
    TabOrder = 9
    Text = #1040#1083#1077#1082#1089#1072#1085#1076#1088
    OnKeyDown = FormKeyDown
    Items.Strings = (
      #1040#1083#1077#1082#1089#1072#1085#1076#1088
      #1051#1077#1085#1091#1089#1100#1082#1072
      #1053#1072#1096#1072' '#1089#1077#1084#1100#1103
      #1055#1080#1097#1091#1075#1080#1085#1099
      #1057#1090#1072#1088#1086#1074#1086#1081#1090#1086#1074#1099
      #1070#1078#1072#1085#1080#1085#1086#1074#1099)
  end
  object CheckBox1: TCheckBox
    Left = 176
    Top = 130
    Width = 73
    Height = 17
    Caption = #1047#1072' '#1095#1090#1086'?'
    TabOrder = 10
    OnClick = CheckBox1Click
  end
  object Button5: TButton
    Left = 104
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 11
    OnClick = Button5Click
    OnKeyDown = FormKeyDown
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 160
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OnClick = N2Click
    end
  end
end
