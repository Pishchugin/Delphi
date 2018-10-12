object ToolsForm: TToolsForm
  Left = 183
  Top = 117
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
  ClientHeight = 234
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 137
    Height = 105
    Caption = #1055#1072#1085#1077#1083#1080' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
    TabOrder = 0
    object filesCheckBox: TCheckBox
      Left = 8
      Top = 24
      Width = 97
      Height = 17
      Caption = #1060#1072#1081#1083#1099
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object editCheckBox: TCheckBox
      Left = 8
      Top = 48
      Width = 97
      Height = 17
      Caption = #1055#1088#1072#1074#1082#1072
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object fontsCheckBox: TCheckBox
      Left = 8
      Top = 72
      Width = 97
      Height = 17
      Caption = #1064#1088#1080#1092#1090
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 136
    Width = 137
    Height = 81
    Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
    TabOrder = 1
    object whiteRadioButton: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = #1041#1077#1083#1099#1081
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object blueRadioButton: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = #1057#1080#1085#1080#1081
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 24
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 64
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    Kind = bkCancel
  end
end
