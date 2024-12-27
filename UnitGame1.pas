﻿unit UnitGame1;

interface

uses
  System.SysUtils, Windows, Gener, UnitBasic, SplitGo;

type AllDifficult = (Demo, Easy, Medium, Hard);

const basicCurrentStage = 1;
      basicSubStage = 5;
      basicWinCount = 0;

var   basicNextSubStage: integer = 9; //9
      basicNextWinCount: integer = 2; //3
      basicMaxStage: integer = 5;
      basicHint: integer = 5;
      basicDifficult: AllDifficult = Medium;

var CurrentStage, subStage, CurrentHint, pbTime, pbMax, pbStartTime: integer;
    exampleS: string;
    CurrentDifficult: AllDifficult = Medium;

procedure nextStage();
procedure StartGame();
procedure CheckAllStage(wordIn: string);
procedure StartSaveGame();

implementation

//uses Game
uses FMainCode, saveGame, Vcl.Dialogs;

var
  WinCount, winStreak: integer;
  inputS, slovoOut, StatistikOut, rulesOut: string;

procedure DemoDifficultNextStage(var rulesOut: string);
begin
  case CurrentStage of
    1:
    begin
      rulesOut:= 'Правило: Введите то же слово';
      exampleS:=gener.GetWord(subStage);
      pbTime := 4000;
      StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    2:
    begin
      rulesOut:= 'Правило: Введите слово перевёрнутым';
      exampleS:=gener.GetWord(subStage+2);
      pbTime := 4000;
      StatistikOut:= 'Количество букв ' + IntToStr(SubStage+2);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    3:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в любом порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    4:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш, в любом порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    5:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в том же порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    6:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш в том же порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    7:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это'+
      'перевёртыш в перевёрнутом порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
  end;
end;

procedure EasyDifficultNextStage(var rulesOut: string);
begin
  case CurrentStage of
    1:
    begin
      rulesOut:= 'Правило: Введите слово перевёрнутым';
      exampleS:=gener.GetWord(subStage+2);
      pbTime := 4000;
      StatistikOut:= 'Количество букв ' + IntToStr(SubStage+2);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    2:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в любом порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    3:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш, в любом порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    4:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в том же порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    5:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш в том же порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    6:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это'+
      'перевёртыш в перевёрнутом порядке';
      exampleS:=gener.Get5word(subStage-3);
      pbTime := 5500 + (subStage-5)*1000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
  end;
end;

procedure MediumDifficultNextStage(var rulesOut: string);
begin
  case CurrentStage of
    1:
    begin
      rulesOut:= 'Правило: Введите слово перевёрнутым';
      exampleS:=gener.GetWord(subStage);
      pbTime := 4000;
      StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    2:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в любом порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    3:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в том же порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    4:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш в любом порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    5:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это перевёртыш в том же порядке';
      exampleS:=gener.Get5word(subStage);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
  end;
end;

procedure HardDifficultNextStage(var rulesOut: string);
begin
  case CurrentStage of
    1:
    begin
      rulesOut:= 'Правило: Введите слово перевёрнутым. Размер букв учитывается!';
      exampleS:=gener.getWordRandLetter(subStage-2);
      pbTime := 4000;
      StatistikOut:= 'Количество букв ' + IntToStr(SubStage-2);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    2:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в любом порядке. Размер букв учитывается!';
      exampleS:=gener.Get5WordRandLetter(subStage-3);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    3:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел в том же порядке. Размер букв учитывается!';
      exampleS:=gener.Get5WordRandLetter(subStage-3);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    4:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово это'+
      'перевёртыш в любом порядке. Размер букв учитывается!';
      exampleS:=gener.Get5WordRandLetter(subStage-3);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
    5:
    begin
      rulesOut:= 'Правило: Введите все слова через пробел причём каждое слово' +
      'это перевёртыш в том же порядке. Размер букв учитывается!';
      exampleS:=gener.Get5WordRandLetter(subStage-3);
      pbTime := 8000 + (subStage-5)*2000;
      StatistikOut:= 'Количество слов ' + IntToStr(SubStage-3);
      MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;
    end;
  end;
end;

procedure nextStage();
begin
  MainFormGame.GameFrame.SlovoEdit.Enabled:= False;
  case CurrentDifficult of
    Demo: DemoDifficultNextStage(rulesOut);
    Easy: EasyDifficultNextStage(rulesOut);
    Medium: MediumDifficultNextStage(rulesOut);
    Hard: HardDifficultNextStage(rulesOut);
  end;
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

procedure DemoDifficultCheckAllStage(var ansCheck: boolean; wordIn: string);
begin
  case CurrentStage of
    1:
      begin
        if (exampleS = wordIn) then ansCheck:= true
        else ansCheck:= False;
      end;
    2:
      ansCheck:= G1Check(exampleS,wordIn);
    3:
      ansCheck:= G2Check(exampleS,wordIn);
    4:
      ansCheck:= G4Check(exampleS,wordIn);
    5:
      ansCheck:= G3Check(exampleS,wordIn);
    6:
      ansCheck:= G5Check(exampleS,wordIn);
    7:
      ansCheck:= G6Check(exampleS,wordIn);
    else ansCheck:= False;
  end;
end;

procedure EasyDifficultCheckAllStage(var ansCheck: boolean; wordIn: string);
begin
  case CurrentStage of
    1:
      ansCheck:= G1Check(exampleS,wordIn);
    2:
      ansCheck:= G2Check(exampleS,wordIn);
    3:
      ansCheck:= G4Check(exampleS,wordIn);
    4:
      ansCheck:= G3Check(exampleS,wordIn);
    5:
      ansCheck:= G5Check(exampleS,wordIn);
    6:
      ansCheck:= G6Check(exampleS,wordIn);
    else ansCheck:= False;
  end;
end;

procedure MediumDifficultCheckAllStage(var ansCheck: boolean; wordIn: string);
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
end;

procedure HardDifficultCheckAllStage(var ansCheck: boolean; wordIn: string);
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
end;

procedure CheckAllStage(wordIn: string);
var ansCheck: boolean;
begin
  case CurrentDifficult of
    Demo: DemoDifficultCheckAllStage(ansCheck, wordIn);
    Easy: EasyDifficultCheckAllStage(ansCheck, wordIn);
    Medium: MediumDifficultCheckAllStage(ansCheck, wordIn);
    Hard: HardDifficultCheckAllStage(ansCheck, wordIn);
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

  end;        //9
  if (SubStage >= basicNextSubStage) then
  begin
    SubStage := basicSubStage;
    Inc(CurrentStage);
    if (CurrentStage <= basicMaxStage) then begin
      StatistikOut:= 'Стадия игры ' + IntToStr(CurrentStage);
      MainFormGame.GameFrame.StatistikStageLable.Caption:= StatistikOut;
      case CurrentDifficult of    //change rules
        Demo: DemoDifficultNextStage(rulesOut);
        Easy: EasyDifficultNextStage(rulesOut);
        Medium: MediumDifficultNextStage(rulesOut);
        Hard: HardDifficultNextStage(rulesOut);
      end;
      StatistikOut:= 'Поздравляю! Новая стадия - ' + IntToStr(CurrentStage) +
      '! Правило стадии поменалось! ' + rulesOut;
      showMessage(StatistikOut);
    end;
  end;
  saveGame.SaveG(4, CurrentStage, subStage, CurrentHint, CurrentDifficult);
end;

procedure basicVarStartGame();
begin
  case CurrentDifficult of
    Demo: begin
      basicMaxStage:= 7;
      basicNextWinCount:= 1;
      basicHint:= 15;
      basicNextSubStage:= 7;
    end;
    Easy: begin
      basicMaxStage:= 6;
      basicNextWinCount:= 2;
      basicHint:= 10;
      basicNextSubStage:= 7;
    end;
    Medium: begin
      basicMaxStage:= 5;
      basicNextWinCount:= 2;
      basicHint:= 5;
      basicNextSubStage:= 9;
    end;
    Hard: begin
      basicMaxStage:= 5;
      basicNextWinCount:= 3;
      basicHint:= 1;
      basicNextSubStage:= 7;
    end;
  end;
end;

procedure basicStartGame();
var myStatistikOut: string;
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
  myStatistikOut:= 'Cложность: ';
  case CurrentDifficult of
    Demo:
    begin
      myStatistikOut:= myStatistikOut + 'Demo ';
      DemoDifficultNextStage(rulesOut);  //change rules
    end;
    Easy:
    begin
      myStatistikOut:= myStatistikOut + 'Easy ';
      EasyDifficultNextStage(rulesOut);  //change rules
    end;
    Medium:
    begin
      myStatistikOut:= myStatistikOut + 'Medium ';
      MediumDifficultNextStage(rulesOut);  //change rules
    end;
    Hard:
    begin
      myStatistikOut:= myStatistikOut + 'Hard ';
      HardDifficultNextStage(rulesOut);   //change rules
    end;
  end;
  MainFormGame.GameFrame.StatisticDifficultLabel.Caption:= myStatistikOut;
  {case CurrentDifficult of
      Demo:
      Easy:
      Medium:
      Hard:
  end;}
  StatistikOut:= 'Приготовьтесь, игра начинается! ' +
    'Правило ' + IntToStr(CurrentStage) + ' стадии - ' + rulesOut;
  showMessage(StatistikOut);
end;

procedure StartGame();
begin
  basicVarStartGame;
  CurrentStage:= basicCurrentStage;  //1
  subStage:= basicSubStage;
  CurrentHint:= basicHint;
  basicStartgame;
end;

procedure StartSaveGame();
begin
  basicVarStartGame;
  basicStartGame;
end;

end.
