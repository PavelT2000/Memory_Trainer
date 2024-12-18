object MainFormGame: TMainFormGame
  Left = 0
  Top = 0
  Caption = 'MainFormGame'
  ClientHeight = 601
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  GlassFrame.Enabled = True
  OnCreate = FormCreate
  TextHeight = 15
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
  inline RulesFrame: TRulesFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 601
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 1076
    ExplicitHeight = 593
    inherited Image1: TImage
      Width = 1078
      Height = 601
      ExplicitWidth = 1078
      ExplicitHeight = 601
    end
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inline MenuFrame: TMenuFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 601
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1076
    ExplicitHeight = 593
    inherited Image1: TImage
      Width = 1078
      Height = 601
    end
    inherited NewGameButton: TButton
      Left = 345
      Top = 126
      Width = 355
      ExplicitLeft = 344
      ExplicitTop = 124
      ExplicitWidth = 355
    end
    inherited ContinueButton: TButton
      Left = 345
      Top = 260
      Width = 355
      ExplicitLeft = 344
      ExplicitTop = 256
      ExplicitWidth = 355
    end
    inherited RulesButton: TButton
      Left = 345
      Top = 387
      Width = 355
      ExplicitLeft = 344
      ExplicitTop = 381
      ExplicitWidth = 355
    end
  end
  inline GameFrame: TGameFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 601
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1078
    ExplicitHeight = 601
    inherited bg: TImage
      Width = 1078
      Height = 601
      ExplicitWidth = 995
      ExplicitHeight = 430
    end
    inherited SlovoEdit: TEdit
      Left = 240
      Top = 286
      Width = 488
      Height = 57
      AutoSize = False
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 239
      ExplicitTop = 282
      ExplicitWidth = 488
      ExplicitHeight = 57
    end
    inherited SlovoPanel: TPanel
      Left = 264
      Top = 78
      Width = 436
      Height = 123
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 264
      ExplicitTop = 78
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
      Height = 55
      ExplicitLeft = 747
      ExplicitTop = 284
      ExplicitWidth = 61
      ExplicitHeight = 55
    end
    inherited ProgressBar1: TProgressBar
      Left = 240
      Top = 440
      Width = 488
      Height = 35
      ExplicitLeft = 239
      ExplicitTop = 434
      ExplicitWidth = 488
      ExplicitHeight = 35
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
  inline SaveMenuFrame: TSaveMenuFrame
    Left = 0
    Top = 0
    Width = 1078
    Height = 601
    Align = alClient
    TabOrder = 4
    ExplicitTop = 121
    ExplicitWidth = 1078
    inherited Image1: TImage
      Width = 1078
      Height = 601
      ExplicitWidth = 1920
      ExplicitHeight = 1080
    end
  end
end
