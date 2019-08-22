object Form1: TForm1
  Left = 304
  Top = 259
  Width = 709
  Height = 484
  Caption = 'Form1'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 80
    Width = 205
    Height = 16
    Caption = #1052#1072#1090#1088#1080#1094#1072' '#1087#1077#1088#1074#1080#1095#1085#1099#1093' '#1095#1080#1089#1077#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 360
    Width = 258
    Height = 16
    Caption = #1052#1072#1089#1089#1080#1074' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1093' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 24
    Width = 39
    Height = 13
    Caption = #1057#1090#1088#1086#1082#1080':'
  end
  object Label4: TLabel
    Left = 24
    Top = 56
    Width = 47
    Height = 13
    Caption = #1057#1090#1086#1083#1073#1094#1099':'
  end
  object StringGrid1: TStringGrid
    Left = 24
    Top = 104
    Width = 657
    Height = 257
    ColCount = 10
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 0
    RowHeights = (
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
  end
  object StringGrid2: TStringGrid
    Left = 24
    Top = 384
    Width = 657
    Height = 33
    ColCount = 10
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 80
    Top = 48
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object BStart: TButton
    Left = 232
    Top = 24
    Width = 97
    Height = 49
    Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 4
    OnClick = MStartClick
  end
  object BMax: TButton
    Left = 352
    Top = 24
    Width = 97
    Height = 49
    Caption = 'Max'
    TabOrder = 5
    OnClick = MMaxClick
  end
  object MainMenu1: TMainMenu
    Left = 672
    object MStart: TMenuItem
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      OnClick = MStartClick
    end
    object MMax: TMenuItem
      Caption = 'Max'
      OnClick = MMaxClick
    end
    object MRows: TMenuItem
      Caption = #1057#1090#1088#1086#1082#1080
      OnClick = MRowsClick
    end
    object MColumns: TMenuItem
      Caption = #1057#1090#1086#1083#1073#1094#1099
      OnClick = MColumnsClick
    end
    object MAbout: TMenuItem
      Caption = #1054' '#1085#1072#1089
      OnClick = MAboutClick
    end
  end
end
