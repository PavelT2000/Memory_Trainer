﻿unit UnitGame1;

interface

uses
  System.SysUtils, Windows, Gener, UnitBasic, SplitGo;

const basicCurrentStage = 1;
      basicSubStage = 5;
      basicWinCount = 0;
      basicHint = 5;

var   basicNextSubStage: integer = 7; //9
      basicNextWinCount: integer = 2; //3
      basicMaxStage: integer = 5;

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

procedure nextStage();
var rulesOut: string;
begin
  MainFormGame.GameFrame.SlovoEdit.Enabled:= False;

  case CurrentStage of
    1:
    begin
      rulesOut:= 'Правило: Введите слово перевёрнутым';
      exampleS:=gener.GetWord(subStage);
      pbTime := 4000;
    end;
    2:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в любом порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
    end;
    3:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в том же порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
    end;
    4:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш в любом порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
    end;
    5:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш в том же порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
    end;
  end;
  MainFormGame.GameFrame.statistikRulesLabel.Caption:= rulesOut;
  exampleS := Trim(exampleS);
  MainFormGame.GameFrame.SlovoRememberLabel.Caption:= 'Запомните слово: ';
  MainFormGame.GameFrame.OnlySlovoLable.Caption:= exampleS;
  //MainFormGame.GameFrame.SlovoPanel.Visible:= True;
  //MainFormGame.GameFrame.SlovoRememberLabel.Visible:= True;

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

procedure CheckAllStage(wordIn: string);
var ansCheck: boolean;
begin
  case CurrentStage of
    1:
      ansCheck:= G1Check(exampleS,wordIn);
    2:
      ansCheck:= G2Check(exampleS,wordIn);
    3:
      ansCheck:= G3Check(exampleS,wordIn);
    4:
      ansCheck:= G4Check(exampleS,wordIn);
    5:
      ansCheck:= G5Check(exampleS,wordIn);
    else ansCheck:= False;
  end;
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
  saveGame.SaveG(4, CurrentStage, subStage);
end;

procedure basicStartGame();
begin
  gener.GetAllSArr();
  WinCount:= basicWinCount;
  WinStreak:= 0;
  CurrentHint:= basicHint;
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
  basicStartgame;
end;

procedure StartSaveGame();
begin
  basicStartGame;
end;

end.
