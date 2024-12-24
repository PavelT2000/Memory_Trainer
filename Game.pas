﻿unit Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UnitGame1, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

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
    Timer1: TTimer;
    OnlySlovoLable: TLabel;
    nextWordTimer: TTimer;
    backFrameButton: TButton;
    HintButton: TButton;
    SaveGameNowButton: TButton;
    HintTimer: TTimer;
    statistikWinStreak: TLabel;
    CustomPB: TPanel;
    ProgressPB: TLabel;
    StatisticDifficultLabel: TLabel;
    SettingImage: TImage;
    procedure CheckButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure nextWordTimerTimer(Sender: TObject);
    procedure backFrameButtonClick(Sender: TObject);
    procedure SaveGameNowButtonClick(Sender: TObject);
    procedure HintButtonClick(Sender: TObject);
    procedure HintTimerTimer(Sender: TObject);
    procedure SlovoEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SettingImageClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var GameFrameMode: boolean = False;
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
  FMainCode.LoadMenuFrame;
end;

procedure CheckButtonOutProc();
var wordIn: string;
begin
  if (MainFormGame.GameFrame.CheckButton.Enabled = True) then begin
    MainFormGame.GameFrame.HintButton.Enabled:= False;
    MainFormGame.GameFrame.CheckButton.Enabled:= False;
    wordIn:= MainFormGame.GameFrame.SlovoEdit.Text;
    if (UnitGame1.CurrentDifficult <> Hard) then begin
      SplitGo.LowerRus(wordIn);
    end;
    wordIn := Trim(wordIn);
    unitGame1.CheckAllStage(wordIn);
    MainFormGame.GameFrame.NextWordTimer.Enabled:= True;
    MainFormGame.GameFrame.SlovoEdit.Text:= '';
  end;
end;

procedure TGameFrame.CheckButtonClick(Sender: TObject);
begin
  CheckButtonOutProc;
end;

procedure TGameFrame.HintButtonClick(Sender: TObject);
begin
  MainFormGame.GameFrame.HintButton.Enabled:= False;
  if (UnitGame1.CurrentHint > 0) then begin
    dec(UnitGame1.CurrentHint);
    MainFormGame.GameFrame.HintButton.Caption:= 'Подсказок: ' + intToStr(UnitGame1.CurrentHint);
    MainFormGame.GameFrame.OnlySlovoLable.Caption:= UnitGame1.exampleS;
    MainFormGame.GameFrame.HintTimer.Interval:= UnitGame1.pbTime div 3;
    MainFormGame.GameFrame.HintTimer.Enabled:= True;
  end;
end;

procedure TGameFrame.HintTimerTimer(Sender: TObject);
begin
  HintTimer.Enabled:= False;
  OnlySlovoLable.Caption:= '';
  if (UnitGame1.CurrentHint = 0) then begin
    MainFormGame.GameFrame.HintButton.Enabled:= False;
  end
  else begin
    MainFormGame.GameFrame.HintButton.Enabled:= True;
  end;
end;

procedure TGameFrame.SettingImageClick(Sender: TObject);
begin
  FMainCode.LoadSettingFrame;
end;

procedure TGameFrame.nextWordTimerTimer(Sender: TObject);
begin
  NextWordTimer.Enabled:= False;
  if (CurrentStage > UnitGame1.basicMaxStage) then begin
    ShowMessage('Вы победили!');
    FMainCode.LoadMenuFrame;
  end
  else begin
    UnitGame1.nextStage;
  end;
end;

procedure TGameFrame.SaveGameNowButtonClick(Sender: TObject);
begin
  FMainCode.LoadSaveMenuFrame;
end;

procedure TGameFrame.SlovoEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then begin  //13 - enter
    CheckButtonOutProc;
  end;
end;

procedure TGameFrame.Timer1Timer(Sender: TObject);
var ElapsedTime: Integer;
begin
  // Calculate time from the start moment
  ElapsedTime := GetTickCount - pbStartTime;

  // Calculate progress
  // No problem if Width will be < 0
  ProgressPB.Width := pbMax - Round(pbMax * ElapsedTime / pbTime);

  if ElapsedTime >= pbTime then
  begin
    Timer1.Enabled := False;

    //SlovoPanel.Visible:= False;
    //SlovoRememberLabel.Visible:= False;
    OnlySlovoLable.Caption:= '';
    CheckButton.Enabled:= True;
    SlovoEdit.Enabled:= True;
    HintButton.Enabled:= True;
  end;
end;

end.
