object Form1: TForm1
  Left = 192
  Top = 114
  BorderStyle = bsDialog
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1082#1083#1072#1074#1080#1072#1090#1091#1088#1086#1081
  ClientHeight = 606
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 312
    Top = 232
    Width = 105
    Height = 105
    Stretch = True
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 94
    Height = 16
    Caption = #1050#1083#1072#1074#1080#1072#1090#1091#1088#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 18
    Height = 13
    Caption = '==='
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 45
    Height = 16
    Caption = #1052#1099#1096#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 18
    Height = 13
    Caption = '==='
  end
  object helpBitBtn: TBitBtn
    Left = 660
    Top = 8
    Width = 75
    Height = 25
    TabOrder = 0
    Visible = False
    OnClick = helpBitBtnClick
    Kind = bkHelp
  end
end
