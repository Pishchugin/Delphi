object Vipiska: TVipiska
  Left = 175
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1042#1099#1087#1080#1089#1082#1072' '#1087#1086' '#1089#1090#1072#1090#1100#1077
  ClientHeight = 629
  ClientWidth = 822
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 20
    Width = 60
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076': '#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 20
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
  object Label3: TLabel
    Left = 488
    Top = 20
    Width = 32
    Height = 13
    Caption = #1057#1095#1077#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 592
    Width = 165
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1087#1088#1080#1093#1086#1076#1086#1074' '#1087#1086' '#1089#1090#1072#1090#1100#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 608
    Width = 165
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1088#1072#1089#1093#1086#1076#1086#1074' '#1087#1086' '#1089#1090#1072#1090#1100#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 672
    Top = 600
    Width = 93
    Height = 13
    Caption = #1042#1089#1077#1075#1086' '#1079#1072#1087#1080#1089#1077#1081':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 4
    Top = 53
    Width = 813
    Height = 531
    ColCount = 8
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 1500
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      64
      144
      223
      64
      64
      64
      64
      97)
  end
  object Edit1: TEdit
    Left = 96
    Top = 16
    Width = 65
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 198
    Top = 16
    Width = 67
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 528
    Top = 16
    Width = 265
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'Edit3'
  end
end
