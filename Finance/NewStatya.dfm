object NewStat: TNewStat
  Left = 439
  Top = 114
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1089#1090#1072#1090#1077#1081
  ClientHeight = 131
  ClientWidth = 267
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 32
    Width = 136
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1090#1072#1090#1100#1080': '
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 249
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 56
    Width = 249
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Button1: TButton
    Left = 96
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = Button1Click
  end
end
