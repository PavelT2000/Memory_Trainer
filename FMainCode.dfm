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
    ExplicitLeft = 182
    ExplicitTop = -1
    inherited Image1: TImage
      Width = 1078
      Height = 601
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
    ExplicitWidth = 897
    ExplicitHeight = 422
    inherited Image1: TImage
      Width = 1078
      Height = 601
    end
    inherited NewGameButton: TButton
      Left = 345
      Top = 126
      Width = 355
      ExplicitLeft = 171
      ExplicitTop = 82
      ExplicitWidth = 355
    end
    inherited ContinueButton: TButton
      Left = 345
      Top = 260
      Width = 355
      ExplicitLeft = 171
      ExplicitTop = 178
      ExplicitWidth = 355
    end
    inherited RulesButton: TButton
      Left = 345
      Top = 386
      Width = 355
      ExplicitLeft = 171
      ExplicitTop = 268
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
    ExplicitWidth = 899
    ExplicitHeight = 430
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
      ExplicitLeft = 240
      ExplicitTop = 286
      ExplicitWidth = 488
      ExplicitHeight = 57
    end
    inherited SlovoPanel: TPanel
      Left = 264
      Top = 111
      Width = 436
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 264
      ExplicitTop = 111
      ExplicitWidth = 436
      inherited SlovoRememberLabel: TLabel
        Left = 56
        Top = 6
        Width = 297
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 56
        ExplicitTop = 6
        ExplicitWidth = 297
      end
      inherited OnlySlovoLable: TLabel
        Left = 16
        Top = 36
        Width = 409
        Height = 42
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 16
        ExplicitTop = 36
        ExplicitWidth = 409
        ExplicitHeight = 42
      end
    end
    inherited statistikPanel: TPanel
      Left = 23
      Top = 15
      Width = 170
      Height = 219
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 23
      ExplicitTop = 15
      ExplicitWidth = 170
      ExplicitHeight = 219
      inherited StatistikStageLable: TLabel
        Width = 153
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 153
      end
      inherited statistikSubStageLabel: TLabel
        Width = 153
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 153
      end
      inherited statistikRulesLabel: TLabel
        Width = 153
        Height = 113
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
      ExplicitLeft = 748
      ExplicitTop = 288
      ExplicitWidth = 61
      ExplicitHeight = 55
    end
    inherited ProgressBar1: TProgressBar
      Left = 240
      Top = 440
      Width = 488
      Height = 35
      ExplicitLeft = 240
      ExplicitTop = 440
      ExplicitWidth = 488
      ExplicitHeight = 35
    end
    inherited Timer1: TTimer
      Left = 1008
      Top = 24
    end
  end
end
