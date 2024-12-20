object MainFormGame: TMainFormGame
  Left = 0
  Top = 0
  Caption = 'MainFormGame'
  ClientHeight = 604
  ClientWidth = 1078
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
    Width = 1078
    Height = 604
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 1076
    ExplicitHeight = 596
    inherited Image1: TImage
      Width = 1078
      Height = 604
    end
    inherited Save1Button: TButton
      Left = 349
      Top = 69
      Width = 355
      Height = 58
      Font.Height = -43
      ExplicitLeft = 348
      ExplicitTop = 68
      ExplicitWidth = 355
      ExplicitHeight = 58
    end
    inherited Save2Button: TButton
      Left = 349
      Top = 183
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 348
      ExplicitTop = 180
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited AutoSaveButton: TButton
      Left = 349
      Top = 403
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 348
      ExplicitTop = 397
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited Save3Button: TButton
      Left = 349
      Top = 292
      Width = 355
      Height = 59
      Font.Height = -43
      ExplicitLeft = 348
      ExplicitWidth = 355
      ExplicitHeight = 59
    end
    inherited backFrameButton: TButton
      Left = 23
      Top = 518
      Width = 161
      Height = 58
      Font.Height = -33
      ExplicitLeft = 23
      ExplicitTop = 511
      ExplicitWidth = 161
      ExplicitHeight = 58
    end
  end
  inline GameFrame: TGameFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 604
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1078
    ExplicitHeight = 604
    inherited bg: TImage
      Width = 1078
      Height = 604
      ExplicitWidth = 995
      ExplicitHeight = 430
    end
    inherited SlovoEdit: TEdit
      Left = 240
      Top = 288
      Width = 488
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 239
      ExplicitTop = 284
      ExplicitWidth = 488
    end
    inherited SlovoPanel: TPanel
      Left = 264
      Top = 79
      Width = 436
      Height = 123
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 263
      ExplicitTop = 77
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
      Left = 23
      Top = 15
      Width = 170
      Height = 219
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 23
      ExplicitTop = 13
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
    end
    inherited CheckButton: TButton
      Left = 748
      Top = 288
      Width = 61
      ExplicitLeft = 747
      ExplicitTop = 284
      ExplicitWidth = 61
    end
    inherited ProgressBar1: TProgressBar
      Left = 240
      Top = 442
      Width = 488
      Height = 35
      ExplicitLeft = 239
      ExplicitTop = 436
      ExplicitWidth = 488
      ExplicitHeight = 35
    end
    inherited backFrameButton: TButton
      Left = 23
      Top = 521
      Font.Height = -19
      ExplicitLeft = 23
      ExplicitTop = 514
    end
    inherited HintButton: TButton
      Left = 872
      Top = 288
      Width = 169
      Height = 57
      Caption = #1087#1086#1076#1089#1084#1086#1090#1088#1077#1090#1100
      Font.Height = -19
      ExplicitLeft = 870
      ExplicitTop = 284
      ExplicitWidth = 169
      ExplicitHeight = 57
    end
    inherited SaveGameNowButton: TButton
      Left = 872
      Top = 521
      Font.Height = -19
      ExplicitLeft = 870
      ExplicitTop = 514
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
  inline SettingFrame: TSettingFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 604
    Align = alClient
    TabOrder = 5
    ExplicitWidth = 1076
    ExplicitHeight = 596
    inherited Image1: TImage
      Width = 1078
      Height = 604
    end
    inherited arrowLeftButton: TButton
      Left = 330
      Top = 176
      ExplicitLeft = 329
      ExplicitTop = 173
    end
    inherited arrowRightButton: TButton
      Left = 656
      Top = 176
      ExplicitLeft = 655
      ExplicitTop = 173
    end
    inherited difficultPanel: TPanel
      Top = 159
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 391
      ExplicitTop = 156
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
      Left = 23
      Top = 535
      ExplicitLeft = 23
      ExplicitTop = 528
    end
    inherited Panel1: TPanel
      Font.Height = -17
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 391
      ExplicitTop = 260
    end
    inherited MuteMusicButton: TButton
      Left = 656
      ExplicitLeft = 655
      ExplicitTop = 260
    end
  end
  inline MenuFrame: TMenuFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 604
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1076
    ExplicitHeight = 596
    inherited Image1: TImage
      Width = 1078
      Height = 604
    end
    inherited NewGameButton: TButton
      Left = 345
      Top = 127
      Width = 355
      ExplicitLeft = 344
      ExplicitTop = 125
      ExplicitWidth = 355
    end
    inherited ContinueButton: TButton
      Left = 345
      Top = 261
      Width = 355
      ExplicitLeft = 344
      ExplicitTop = 257
      ExplicitWidth = 355
    end
    inherited RulesButton: TButton
      Left = 345
      Top = 396
      Width = 355
      ExplicitLeft = 344
      ExplicitTop = 390
      ExplicitWidth = 355
    end
    inherited SettingButton: TButton
      Left = 1016
      Top = 15
      ExplicitLeft = 1016
      ExplicitTop = 15
    end
  end
  inline RulesFrame: TRulesFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 604
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 1076
    ExplicitHeight = 596
    DesignSize = (
      1078
      604)
    inherited Image1: TImage
      Width = 1078
      Height = 604
    end
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Label1: TLabel
        Width = 497
        Height = 441
        ParentFont = False
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 497
        ExplicitHeight = 441
      end
    end
    inherited backFrameButton: TButton
      Left = 13
      Top = 535
      OnClick = nil
      ExplicitLeft = 13
      ExplicitTop = 535
    end
  end
end
