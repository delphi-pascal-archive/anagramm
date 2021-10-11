object Form1: TForm1
  Left = 281
  Top = 132
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1040#1085#1072#1075#1088#1072#1084#1084#1099' v2.2'
  ClientHeight = 281
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 94
    Height = 33
    Caption = #1057#1083#1086#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 25
    Align = alTop
    TabOrder = 0
    object Scores: TLabel
      Left = 1
      Top = 1
      Width = 12
      Height = 23
      Align = alLeft
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Seconds: TLabel
      Left = 325
      Top = 1
      Width = 12
      Height = 23
      Align = alRight
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 72
    Width = 321
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 240
    Width = 169
    Height = 33
    Caption = #1054#1090#1074#1077#1090#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 160
    Width = 169
    Height = 33
    Caption = #1055#1086#1076#1089#1082#1072#1079#1082#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 120
    Width = 169
    Height = 33
    Caption = #1047#1072#1076#1072#1085#1080#1077
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 184
    Top = 120
    Width = 145
    Height = 33
    Caption = #1053#1086#1074#1072#1103
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 184
    Top = 160
    Width = 145
    Height = 33
    Caption = #1056#1077#1082#1086#1088#1076
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 200
    Width = 169
    Height = 33
    Hint = '+10 '#1089#1077#1082#1091#1085#1076#13#10'-20 '#1086#1095#1082#1086#1074
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1088#1077#1084#1103
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 183
    Top = 240
    Width = 146
    Height = 33
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 8
    OnClick = Button7Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 112
    Top = 32
  end
end
