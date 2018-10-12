object DiagParam: TDiagParam
  Left = 449
  Top = 294
  BorderStyle = bsDialog
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072
  ClientHeight = 108
  ClientWidth = 185
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    185
    108)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 169
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Caption = 
      #1042' '#1076#1080#1072#1075#1088#1072#1084#1077' '#1073#1091#1076#1091#1090' '#1086#1090#1088#1072#1078#1077#1085#1099' '#1090#1086#1083#1100#1082#1086' '#1090#1077' '#1089#1090#1072#1090#1100#1080', '#1079#1085#1072#1095#1077#1085#1080#1103' '#1082#1086#1090#1086#1088#1099#1093' '#1073#1091#1076 +
      #1091#1090' '#1087#1088#1077#1074#1099#1096#1072#1090#1100' '#1074#1074#1077#1076#1077#1085#1085#1086#1077' '#1042#1072#1084#1080' '#1085#1080#1078#1077
    WordWrap = True
  end
  object Button1: TButton
    Left = 88
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 73
    Width = 65
    Height = 21
    Anchors = [akBottom]
    TabOrder = 1
    Text = '0'
  end
end
