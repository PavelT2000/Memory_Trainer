﻿unit DemoGame;

interface

uses
  System.SysUtils, Windows, Gener, UnitBasic, SplitGo;

const basicCurrentStage = 1;
      basicSubStage = 5;
      basicWinCount = 0;
      basicHint = 12;

var   basicNextSubStage: integer = 7; //9
      basicNextWinCount: integer = 1; //3
      basicMaxStage: integer = 7;

var CurrentStage, subStage, CurrentHint, pbTime, pbMax, pbStartTime: integer;
    exampleS: string;

procedure nextStage();
procedure StartGame();
procedure CheckAllStage(wordIn: string);
procedure StartSaveGame();

implementation

//uses Game
uses FMainCode, saveGame;

var
  WinCount, winStreak: integer;
  inputS, slovoOut, StatistikOut: string;

procedure nextStage();   //1 iteration of game with out check answer
var rulesOut: string;
begin
  MainFormGame.GameFrame.SlovoEdit.Enabled:= False;

  
  MainFormGame.GameFrame.statistikRulesLabel.Caption:= rulesOut;
  exampleS := Trim(exampleS);
  MainFormGame.GameFrame.SlovoRememberLabel.Caption:= 'Запомните слово: ';
  MainFormGame.GameFrame.OnlySlovoLable.Caption:= exampleS;

  // game (time) bar
  // From higher to lower progress bar
  pbMax := MainFormGame.GameFrame.CustomPB.Width;
  MainFormGame.GameFrame.ProgressPB.Width := pbMax;
  // Get start time to check out when pbTime will end
  pbStartTime := GetTickCount;
  // Interval can be any amount, but < 50 recomended
  MainFormGame.GameFrame.Timer1.Interval := 10;
  MainFormGame.GameFrame.Timer1.Enabled := True;
  //after we wait and next part of program will go after press the button
end;

procedure CheckAllStage(wordIn: string); //check 1 itereation of game
var ansCheck: boolean;
begin
  
  if ansCheck then
  begin
    Inc(WinCount);
    inc(WinStreak);
    slovoOut:= 'Ответ верный!';
  end
  else
  begin
    WinCount:= basicWinCount;
    WinStreak:= 0;
    slovoOut:= 'Ответ не верный(';
    MainFormGame.GameFrame.OnlySlovoLable.Caption:= exampleS;
  end;
  MainFormGame.GameFrame.SlovoRememberLabel.Caption:= slovoOut;
  StatistikOut:= 'Угадано подряд ' + IntToStr(WinStreak);
  MainFormGame.GameFrame.statistikWinStreak.Caption:= StatistikOut;
  if WinCount >= basicNextWinCount then    //3
  begin
    WinCount := basicWinCount;
    Inc(SubStage);
    StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
    MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
  end;        //9
  if SubStage >= basicNextSubStage then
  begin
    SubStage := basicSubStage;
    Inc(CurrentStage);
    StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
    MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    StatistikOut:= 'Стадия игры ' + IntToStr(CurrentStage);
    MainFormGame.GameFrame.StatistikStageLable.Caption:= StatistikOut;
  end;
  //saveGame.SaveG(4, CurrentStage, subStage, CurrentHint, CurrentDifficult);
end;

procedure basicStartGame();
begin
  gener.GetAllSArr();
  WinCount:= basicWinCount;
  WinStreak:= 0;
  pbTime:= 4000;
  MainFormGame.GameFrame.CheckButton.Enabled:= False;
  MainFormGame.GameFrame.HintButton.Enabled:= False;
  MainFormGame.GameFrame.HintButton.Caption:= 'Подсказок: ' + intToStr(CurrentHint);
  //statistik Out
  StatistikOut:= 'Стадия игры ' + IntToStr(CurrentStage);
  MainFormGame.GameFrame.StatistikStageLable.Caption:= StatistikOut;
  StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
  MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
  StatistikOut:= 'Угадано подряд ' + IntToStr(WinStreak);
  MainFormGame.GameFrame.statistikWinStreak.Caption:= StatistikOut;
end;

procedure StartGame();
begin
  CurrentStage:= basicCurrentStage;  //1
  subStage:= basicSubStage;
  CurrentHint:= basicHint;
  basicStartgame;
end;

procedure StartSaveGame();
begin
  basicStartGame;
end;

end.