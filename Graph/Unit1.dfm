object Form1: TForm1
  Left = 412
  Top = 307
  BorderStyle = bsDialog
  Caption = 'Graph'
  ClientHeight = 40
  ClientWidth = 139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  DesignSize = (
    139
    40)
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 2
    Width = 139
    Height = 38
    Panels = <>
    SimplePanel = False
  end
  object Button1: TButton
    Left = 32
    Top = 10
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1053#1072#1088#1080#1089#1086#1074#1072#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
end
