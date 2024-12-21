object MainFormGame: TMainFormGame
  Left = 0
  Top = 0
  Caption = 'MainFormGame'
  ClientHeight = 585
  ClientWidth = 1091
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
    Width = 1091
    Height = 585
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 1085
    ExplicitHeight = 568
    inherited BackGround: TImage
      Width = 1091
      Height = 585
    end
    inherited Save1Button: TButton
      Left = 353
      Top = 62
      Width = 355
      Height = 58
      Font.Height = -43
      ExplicitLeft = 350
      ExplicitTop = 59
      ExplicitWidth = 355
      ExplicitHeight = 58
    end
    inherited Save2Button: TButton
      Left = 353
      Top = 177
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 350
      ExplicitTop = 171
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited AutoSaveButton: TButton
      Left = 353
      Top = 392
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 350
      ExplicitTop = 380
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited Save3Button: TButton
      Left = 353
      Top = 282
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 350
      ExplicitTop = 273
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited backFrameButton: TButton
      Left = 23
      Top = 501
      Width = 161
      Height = 58
      Font.Height = -33
      ExplicitLeft = 22
      ExplicitTop = 486
      ExplicitWidth = 161
      ExplicitHeight = 58
    end
  end
  inline SettingFrame: TSettingFrame
    Left = 0
    Top = 0
    Width = 1091
    Height = 585
    Align = alClient
    TabOrder = 5
    Visible = False
    ExplicitWidth = 1085
    ExplicitHeight = 568
    inherited BackGround: TImage
      Width = 1091
      Height = 585
    end
    inherited arrowLeftButton: TButton
      Left = 339
      Top = 177
      ExplicitLeft = 337
      ExplicitTop = 171
    end
    inherited arrowRightButton: TButton
      Left = 655
      Top = 177
      ExplicitLeft = 651
      ExplicitTop = 171
    end
    inherited difficultPanel: TPanel
      Left = 395
      Top = 160
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 154
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
      Left = 24
      Top = 511
      ExplicitLeft = 24
      ExplicitTop = 496
    end
    inherited Panel1: TPanel
      Left = 395
      Top = 255
      Font.Height = -17
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 247
    end
    inherited MuteMusicButton: TButton
      Left = 655
      Top = 255
      ExplicitLeft = 651
      ExplicitTop = 247
    end
  end
  inline RulesFrame: TRulesFrame
    Left = 0
    Top = 0
    Width = 1091
    Height = 585
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 1085
    ExplicitHeight = 568
    inherited BackGround: TImage
      Width = 1091
      Height = 585
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
      Left = 24
      Top = 509
      ExplicitLeft = 24
      ExplicitTop = 494
    end
  end
  inline MenuFrame: TMenuFrame
    Left = 0
    Top = 0
    Width = 1091
    Height = 585
    Align = alClient
    TabOrder = 2
    Visible = False
    ExplicitWidth = 1085
    ExplicitHeight = 568
    inherited BackGround: TImage
      Width = 1091
      Height = 585
      ExplicitWidth = 1091
      ExplicitHeight = 585
    end
  end
  inline GameFrame: TGameFrame
    Left = 0
    Top = 0
    Width = 1091
    Height = 585
    Align = alClient
    TabOrder = 1
    Visible = False
    ExplicitWidth = 1091
    ExplicitHeight = 585
    inherited bg: TImage
      Width = 1091
      Height = 585
      ExplicitLeft = -176
      ExplicitTop = -32
      ExplicitWidth = 1612
      ExplicitHeight = 784
    end
    inherited SlovoEdit: TEdit
      Left = 243
      Top = 280
      Width = 488
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 240
      ExplicitTop = 271
      ExplicitWidth = 488
    end
    inherited SlovoPanel: TPanel
      Left = 267
      Top = 75
      Width = 436
      Height = 123
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 264
      ExplicitTop = 71
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
      Left = 24
      Top = 12
      Width = 170
      Height = 219
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 23
      ExplicitTop = 8
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
      Left = 753
      Top = 278
      Width = 61
      ExplicitLeft = 749
      ExplicitTop = 269
      ExplicitWidth = 61
    end
    inherited backFrameButton: TButton
      Left = 22
      Top = 504
      Font.Height = -19
      ExplicitLeft = 22
      ExplicitTop = 489
    end
    inherited HintButton: TButton
      Left = 879
      Top = 278
      Height = 57
      Caption = #1087#1086#1076#1089#1084#1086#1090#1088#1077#1090#1100
      Font.Height = -19
      ExplicitLeft = 874
      ExplicitTop = 269
      ExplicitHeight = 57
    end
    inherited SaveGameNowButton: TButton
      Left = 879
      Top = 504
      Font.Height = -19
      ExplicitLeft = 874
      ExplicitTop = 489
    end
    inherited CustomPB: TPanel
      Top = 358
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 280
      ExplicitTop = 347
      inherited ProgressPB: TLabel
        Anchors = [akLeft, akTop, akBottom]
        StyleElements = [seFont, seClient, seBorder]
      end
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
