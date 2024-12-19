﻿unit Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UnitGame1, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TGameFrame = class(TFrame)
    bg: TImage;
    SlovoEdit: TEdit;
    SlovoPanel: TPanel;
    statistikPanel: TPanel;
    StatistikStageLable: TLabel;
    statistikSubStageLabel: TLabel;
    statistikRulesLabel: TLabel;
    CheckButton: TButton;
    SlovoRememberLabel: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    OnlySlovoLable: TLabel;
    nextWordTimer: TTimer;
    backFrameButton: TButton;
    HintButton: TButton;
    SaveGameNowButton: TButton;
    procedure CheckButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure nextWordTimerTimer(Sender: TObject);
    procedure backFrameButtonClick(Sender: TObject);
    procedure SaveGameNowButtonClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var GameFrameMode: boolean;
procedure StartGame();

implementation

uses SplitGo, FMainCode;

{$R *.dfm}

procedure StartGame();
begin
  UnitGame1.StartGame;
  UnitGame1.nextStage;
end;

procedure LoadSavegame();
begin

end;

procedure TGameFrame.backFrameButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.MenuFrame.Visible:= True;
  GameFrameMode:= False;
end;

procedure TGameFrame.CheckButtonClick(Sender: TObject);
var wordIn: string;
begin
  wordIn:= SlovoEdit.Text;
  SplitGo.LowerRus(wordIn);
  wordIn := Trim(wordIn);
  unitGame1.CheckAllStage(wordIn);
  NextWordTimer.Enabled:= True;
  SlovoEdit.Text:= '';
end;

procedure TGameFrame.nextWordTimerTimer(Sender: TObject);
begin
  NextWordTimer.Enabled:= False;
  if (CurrentStage > UnitGame1.basicMaxStage) then begin

  end
  else begin
    UnitGame1.nextStage;
  end;
end;

procedure TGameFrame.SaveGameNowButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.SaveMenuFrame.Visible:= True;
  MainFormGame.SaveMenuFrame.AutoSaveButton.Visible:= False;
end;

procedure TGameFrame.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
  if ProgressBar1.Position >= ProgressBar1.Max then
  begin
    ProgressBar1.Position := ProgressBar1.Position - 1;
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Timer1.Enabled := False;

    //SlovoPanel.Visible:= False;
    //SlovoRememberLabel.Visible:= False;
    OnlySlovoLable.Caption:= '';
    MainFormGame.GameFrame.CheckButton.Enabled:= True;
    MainFormGame.GameFrame.SlovoEdit.Enabled:= True;
  end;
end;

end.
