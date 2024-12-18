﻿unit UnitGame1;

interface

uses
  System.SysUtils, Windows, Gener, UnitBasic, SplitGo;

var CurrentStage, subStage: integer;
    exampleS: string;

procedure nextStage();
procedure StartGame();
procedure CheckAllStage(wordIn: string);

implementation

//uses Game
uses FMainCode;

var
  WinCount: integer;
  inputS, slovoOut, StatistikOut: string;

procedure nextStage();
var rulesOut: string;
    pbTime: integer;
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

  //game (time) bar
  MainFormGame.GameFrame.ProgressBar1.Position:= 0;
  MainFormGame.GameFrame.Timer1.Interval := pbTime div 100;
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
  end;
  if ansCheck then
  begin
    Inc(WinCount);
    slovoOut:= 'Ответ верный!';
  end
  else
  begin
    WinCount:=0;
    slovoOut:= 'Ответ не верный(';
    MainFormGame.GameFrame.OnlySlovoLable.Caption:= exampleS;
  end;
  MainFormGame.GameFrame.SlovoRememberLabel.Caption:= slovoOut;
  //MainFormGame.GameFrame.SlovoPanel.Visible:= True;
  //MainFormGame.GameFrame.SlovoRememberLabel.Visible:= True;
  MainFormGame.GameFrame.CheckButton.Enabled:= False;
                //3
  if WinCount = 3 then
  begin
    WinCount := 0;
    Inc(SubStage);
    StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
    MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
  end;        //9
  if SubStage = 9 then
  begin
    SubStage := 5;
    Inc(CurrentStage);
    StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
    MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    StatistikOut:= 'Стадия игры ' + IntToStr(CurrentStage);
    MainFormGame.GameFrame.StatistikStageLable.Caption:= StatistikOut;
  end;
end;

procedure StartGame();
begin
  gener.GetAllSArr();
  CurrentStage := 1;  //1
  subStage:=5;
  WinCount := 0;
  MainFormGame.GameFrame.CheckButton.Enabled:= False;
  //statistik Out
  StatistikOut:= 'Стадия игры ' + IntToStr(CurrentStage);
  MainFormGame.GameFrame.StatistikStageLable.Caption:= StatistikOut;
  StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
  MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
end;

end.
