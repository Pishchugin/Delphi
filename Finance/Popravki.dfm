object Ostat: TOstat
  Left = 296
  Top = 185
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1089#1095#1077#1090#1072
  ClientHeight = 162
  ClientWidth = 440
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
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 425
    Height = 106
    ColCount = 4
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing]
    TabOrder = 0
    OnKeyDown = StringGrid1KeyDown
    OnSelectCell = StringGrid1SelectCell
    ColWidths = (
      187
      70
      81
      79)
  end
  object Button1: TButton
    Left = 184
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = Button1Click
    OnKeyDown = FormKeyDown
  end
end
