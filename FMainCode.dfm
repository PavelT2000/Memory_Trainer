object MainFormGame: TMainFormGame
  Left = 0
  Top = 0
  Caption = 'MainFormGame'
  ClientHeight = 430
  ClientWidth = 899
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
  inline GameFrame: TGameFrame
    Left = 0
    Top = 0
    Width = 899
    Height = 430
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 995
    ExplicitHeight = 430
    inherited bg: TImage
      Width = 899
      Height = 430
      ExplicitWidth = 995
      ExplicitHeight = 430
    end
    inherited SlovoEdit: TEdit
      Left = 96
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited SlovoPanel: TPanel
      Left = 167
      StyleElements = [seFont, seClient, seBorder]
      inherited SlovoRememberLabel: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited statistikPanel: TPanel
      Left = 8
      StyleElements = [seFont, seClient, seBorder]
      inherited StatistikStageLable: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited statistikSubStageLabel: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited statistikRulesLabel: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited CheckButton: TButton
      Left = 532
    end
    inherited ProgressBar1: TProgressBar
      Left = 96
    end
  end
  inline MenuFrame: TMenuFrame
    Left = 0
    Top = 0
    Width = 899
    Height = 430
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 989
    ExplicitHeight = 413
    inherited Image1: TImage
      Width = 899
      Height = 430
    end
    inherited NewGameButton: TButton
      Left = 260
      Top = 80
      OnClick = MenuFrameNewGameButtonClick
      ExplicitLeft = 304
      ExplicitTop = 76
    end
    inherited ContinueButton: TButton
      Left = 260
      Top = 178
      Width = 371
      ExplicitLeft = 260
      ExplicitTop = 178
      ExplicitWidth = 371
    end
    inherited RulesButton: TButton
      Left = 260
      Top = 261
      ExplicitLeft = 304
      ExplicitTop = 250
    end
  end
  inline RulesFrame: TRulesFrame
    Left = 278
    Top = -1
    Width = 717
    Height = 431
    TabOrder = 3
    Visible = False
    ExplicitLeft = 278
    ExplicitTop = -1
    inherited Image1: TImage
      ExplicitLeft = 216
      ExplicitTop = 0
      ExplicitWidth = 501
    end
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
end
