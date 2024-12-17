object MainFormGame: TMainFormGame
  Left = 0
  Top = 0
  Caption = 'MainFormGame'
  ClientHeight = 430
  ClientWidth = 995
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
    Width = 995
    Height = 430
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 993
    ExplicitHeight = 422
    inherited bg: TImage
      Width = 995
      Height = 430
    end
    inherited SlovoEdit: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited SlovoPanel: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited SlovoRememberLabel: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited statistikPanel: TPanel
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
  end
  inline MenuFrame: TMenuFrame
    Left = 0
    Top = 0
    Width = 995
    Height = 430
    Align = alClient
    TabOrder = 2
    ExplicitLeft = -110
    ExplicitTop = -193
    inherited Image1: TImage
      Width = 995
      Height = 430
    end
    inherited NewGameButton: TButton
      Left = 307
      Top = 80
    end
    inherited ContinueButton: TButton
      Left = 307
      Top = 173
    end
    inherited RulesButtom: TButton
      Left = 307
      Top = 262
    end
  end
end
