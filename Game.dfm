object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  object ProgressBar1: TProgressBar
    Left = 80
    Top = 200
    Width = 326
    Height = 26
    TabOrder = 0
  end
  object Button1: TButton
    Left = 288
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = ButtonProgressBarTest1
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 112
    Top = 88
  end
end
