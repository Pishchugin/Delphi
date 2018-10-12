object DlgVipis: TDlgVipis
  Left = 543
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1042#1099#1087#1080#1089#1082#1072' '#1087#1086' '#1089#1090#1072#1090#1100#1077
  ClientHeight = 354
  ClientWidth = 484
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 38
    Width = 225
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1057#1090#1072#1090#1100#1080' '#1076#1072#1085#1085#1099#1093' "'#1056#1072#1089#1093#1086#1076'"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 240
    Top = 8
    Width = 241
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1087#1086' '#1089#1090#1072#1090#1100#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 56
    Width = 241
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 256
    Top = 84
    Width = 8
    Height = 13
    Caption = #1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 360
    Top = 84
    Width = 15
    Height = 13
    Caption = #1087#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 240
    Top = 108
    Width = 241
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1086' '#1089#1095#1077#1090#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    Caption = #1056#1072#1089#1093#1086#1076
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 8
    Width = 105
    Height = 25
    Caption = #1055#1088#1080#1093#1086#1076
    TabOrder = 1
    OnClick = Button2Click
  end
  object TreeView1: TTreeView
    Left = 8
    Top = 56
    Width = 225
    Height = 289
    Indent = 19
    ReadOnly = True
    TabOrder = 2
    OnDblClick = TreeView1DblClick
  end
  object DateTimePicker1: TDateTimePicker
    Left = 272
    Top = 80
    Width = 81
    Height = 21
    CalAlignment = dtaLeft
    Date = 38836.8539514583
    Time = 38836.8539514583
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 3
  end
  object DateTimePicker2: TDateTimePicker
    Left = 384
    Top = 80
    Width = 81
    Height = 21
    CalAlignment = dtaLeft
    Date = 38836.8539514583
    Time = 38836.8539514583
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 248
    Top = 128
    Width = 225
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
    Items.Strings = (
      #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
      #1042#1072#1083#1102#1090#1085#1099#1081' '#1089#1095#1077#1090' ('#1085#1072#1083#1080#1095#1085#1099#1077')'
      #1056#1091#1073#1083#1077#1074#1099#1081' '#1089#1095#1077#1090' ('#1073#1072#1085#1082')'
      #1042#1072#1083#1102#1090#1085#1099#1081' '#1089#1095#1077#1090' ('#1073#1072#1085#1082')'
      #1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1089#1095#1077#1090' (Yandex-'#1076#1077#1085#1100#1075#1080')'
      '== '#1042#1089#1077' '#1089#1095#1077#1090#1072' ==')
  end
  object Button3: TButton
    Left = 256
    Top = 160
    Width = 209
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1087#1086#1080#1089#1082
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 248
    Top = 28
    Width = 225
    Height = 21
    ReadOnly = True
    TabOrder = 7
    Text = 'Edit1'
  end
  object Animate1: TAnimate
    Left = 320
    Top = 200
    Width = 80
    Height = 50
    Active = True
    CommonAVI = aviFindFolder
    StopFrame = 29
  end
end
