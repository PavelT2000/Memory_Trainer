object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  inline Menu: TFrame1
    Left = 0
    Top = 0
    Width = 995
    Height = 430
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -110
    ExplicitTop = -193
    inherited Image1: TImage
      Width = 995
      Height = 430
      ExplicitLeft = 3
      ExplicitWidth = 995
      ExplicitHeight = 430
    end
  end
  inline Game: TFrame2
    Left = 0
    Top = 0
    Width = 995
    Height = 430
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 371
    ExplicitTop = -34
  end
end
