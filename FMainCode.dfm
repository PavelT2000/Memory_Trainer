object MainFormGame: TMainFormGame
  Left = 0
  Top = 0
  Caption = 'MainFormGame'
  ClientHeight = 694
  ClientWidth = 1174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  GlassFrame.Enabled = True
  OnCreate = FormCreate
  TextHeight = 23
  object MediaPlayer1: TMediaPlayer
    Left = -8
    Top = 0
    Width = 85
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop]
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  inline SaveMenuFrame: TSaveMenuFrame
    Left = 0
    Top = 0
    Width = 1174
    Height = 694
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 1174
    ExplicitHeight = 694
    inherited BackGround: TImage
      Width = 1174
      Height = 694
    end
    inherited Save1Button: TButton
      Left = 396
      Top = 79
      Width = 355
      Height = 58
      Font.Height = -43
      ExplicitLeft = 396
      ExplicitTop = 79
      ExplicitWidth = 355
      ExplicitHeight = 58
    end
    inherited Save2Button: TButton
      Left = 396
      Top = 215
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 396
      ExplicitTop = 215
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited AutoSaveButton: TButton
      Left = 396
      Top = 470
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 396
      ExplicitTop = 470
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited Save3Button: TButton
      Left = 396
      Top = 340
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 396
      ExplicitTop = 340
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited backFrameButton: TButton
      Left = 32
      Top = 600
      Width = 161
      Height = 58
      Font.Height = -33
      ExplicitLeft = 32
      ExplicitTop = 600
      ExplicitWidth = 161
      ExplicitHeight = 58
    end
  end
  inline SettingFrame: TSettingFrame
    Left = 0
    Top = 0
    Width = 1174
    Height = 694
    Align = alClient
    TabOrder = 5
    Visible = False
    ExplicitWidth = 1174
    ExplicitHeight = 694
    inherited BackGround: TImage
      Width = 1174
      Height = 694
    end
    inherited arrowLeftButton: TButton
      Left = 369
      Top = 213
      ExplicitLeft = 369
      ExplicitTop = 213
    end
    inherited arrowRightButton: TButton
      Left = 711
      Top = 213
      ExplicitLeft = 711
      ExplicitTop = 213
    end
    inherited difficultPanel: TPanel
      Left = 437
      Top = 196
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 437
      ExplicitTop = 196
      inherited difficultLevelNameLabel: TLabel
        Height = 23
        Font.Height = -17
        StyleElements = [seFont, seClient, seBorder]
        ExplicitHeight = 23
      end
      inherited difficultLevelLabel: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited BackInMenuButton: TButton
      Left = 31
      Top = 610
      ExplicitLeft = 31
      ExplicitTop = 610
    end
    inherited Panel1: TPanel
      Left = 437
      Top = 306
      Font.Height = -17
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 437
      ExplicitTop = 306
    end
    inherited MuteMusicButton: TButton
      Left = 711
      Top = 306
      ExplicitLeft = 711
      ExplicitTop = 306
    end
  end
  inline RulesFrame: TRulesFrame
    Left = 0
    Top = 0
    Width = 1174
    Height = 694
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 1174
    ExplicitHeight = 694
    inherited BackGround: TImage
      Width = 1174
      Height = 694
    end
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Label1: TLabel
        Width = 497
        Height = 441
        Font.Height = -17
        ParentFont = False
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 497
        ExplicitHeight = 441
      end
    end
    inherited FromRuleToMenuButton: TButton
      Left = 31
      Top = 608
      ExplicitLeft = 31
      ExplicitTop = 608
    end
  end
  inline MenuFrame: TMenuFrame
    Left = 0
    Top = 0
    Width = 1174
    Height = 694
    Align = alClient
    TabOrder = 2
    Visible = False
    ExplicitWidth = 1174
    ExplicitHeight = 694
    inherited BackGround: TImage
      Width = 1174
      Height = 694
    end
  end
  inline GameFrame: TGameFrame
    Left = 0
    Top = 0
    Width = 1174
    Height = 694
    Align = alClient
    TabOrder = 1
    Visible = False
    ExplicitWidth = 1174
    ExplicitHeight = 694
    inherited bg: TImage
      Width = 1174
      Height = 694
      ExplicitLeft = -176
      ExplicitTop = -32
      ExplicitWidth = 1612
      ExplicitHeight = 784
    end
    inherited SlovoEdit: TEdit
      Left = 283
      Top = 337
      Width = 488
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 283
      ExplicitTop = 337
      ExplicitWidth = 488
    end
    inherited SlovoPanel: TPanel
      Left = 307
      Top = 100
      Width = 436
      Height = 123
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 307
      ExplicitTop = 100
      ExplicitWidth = 436
      ExplicitHeight = 123
      inherited SlovoRememberLabel: TLabel
        Left = 56
        Top = 6
        Width = 329
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 56
        ExplicitTop = 6
        ExplicitWidth = 329
      end
      inherited OnlySlovoLable: TLabel
        Left = 16
        Top = 36
        Width = 409
        Height = 85
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 16
        ExplicitTop = 36
        ExplicitWidth = 409
        ExplicitHeight = 85
      end
    end
    inherited statistikPanel: TPanel
      Left = 33
      Top = 33
      Width = 170
      Height = 219
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 33
      ExplicitTop = 33
      ExplicitWidth = 170
      ExplicitHeight = 219
      inherited StatistikStageLable: TLabel
        Width = 153
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 153
      end
      inherited statistikSubStageLabel: TLabel
        Width = 153
        Font.Height = -17
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 153
      end
      inherited statistikRulesLabel: TLabel
        Width = 153
        Height = 113
        Font.Height = -16
        ParentFont = False
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 153
        ExplicitHeight = 113
      end
      inherited statistikWinStreak: TLabel
        Width = 169
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 169
      end
    end
    inherited CheckButton: TButton
      Left = 817
      Top = 335
      Width = 61
      ExplicitLeft = 817
      ExplicitTop = 335
      ExplicitWidth = 61
    end
    inherited ProgressBar1: TProgressBar
      Left = 283
      Top = 510
      Width = 488
      Height = 35
      ExplicitLeft = 283
      ExplicitTop = 510
      ExplicitWidth = 488
      ExplicitHeight = 35
    end
    inherited backFrameButton: TButton
      Left = 31
      Top = 602
      Font.Height = -19
      ExplicitLeft = 31
      ExplicitTop = 602
    end
    inherited HintButton: TButton
      Left = 957
      Top = 335
      Height = 57
      Caption = #1087#1086#1076#1089#1084#1086#1090#1088#1077#1090#1100
      Font.Height = -19
      ExplicitLeft = 957
      ExplicitTop = 335
      ExplicitHeight = 57
    end
    inherited SaveGameNowButton: TButton
      Left = 957
      Top = 602
      Font.Height = -19
      ExplicitLeft = 957
      ExplicitTop = 602
    end
    inherited Timer1: TTimer
      Left = 1008
      Top = 24
    end
    inherited nextWordTimer: TTimer
      Left = 936
      Top = 24
    end
  end
end
