unit UnitGame1;

interface

uses
  System.SysUtils, Windows, Gener, UnitBasic, SplitGo;

var CurrentStage, subStage: integer;

procedure nextStage();
procedure StartGame();
procedure CheckAllStage(wordIn: string);

implementation

//uses Game
uses FMainCode;

var
  WinCount: integer;
  inputS, exampleS, slovoOut, StatistikOut: string;

procedure Stage1();
begin
  exampleS:=gener.GetWord(subStage);
  exampleS := Trim(exampleS);

  slovoOut:= 'Запомните слово:';
  slovoOut:= slovoOut + exampleS;
  MainFormGame.GameFrame.SlovoRememberLabel.Caption:= slovoOut;
  MainFormGame.GameFrame.SlovoPanel.Visible:= True;
  MainFormGame.GameFrame.SlovoRememberLabel.Visible:= True;

  //game (time) bar

  {GameFrame.SlovoPanel.Visible:= False;
  GameFrame.SlovoRememberLabel.Visible:= False;}

  //after we wait and next part of program will go after press the button
end;

procedure Stage2();
begin
  exampleS:=gener.Get5word(subStage);
  Writeln('Запомните слова:');
  Writeln(exampleS);
  exampleS := Trim(exampleS);
  Sleep(8000 + (subStage-5)*2000);
  writeln('Стадия игры ', CurrentStage, '. Количество слов ', SubStage);
  writeln('Введите все слова через пробел в любом порядке');
  Readln(inputS);
  SplitGo.LowerRus(inputS);
  inputS := Trim(inputS);
  if G2Check(exampleS,InputS) then
  begin
    Inc(WinCount);
    Writeln('Верно');
  end
  else
  begin
    WinCount:=0;
    Writeln('Не верно');
  end;
end;

procedure Stage3();
begin
  exampleS:=gener.Get5word(subStage);
  Writeln('Запомните слова:');
  Writeln(exampleS);
  exampleS := Trim(exampleS);
  Sleep(8000 + (subStage-5)*2000);
  writeln('Стадия игры ', CurrentStage, '. Количество слов ', SubStage);
  writeln('Введите все слова через пробел в том же порядке');
  Readln(inputS);
  SplitGo.LowerRus(inputS);
  inputS := Trim(inputS);
  if G3Check(exampleS,InputS) then
  begin
    Inc(WinCount);
    Writeln('Верно');
  end
  else
  begin
    WinCount:=0;
    Writeln('Не верно');
  end;
end;

procedure Stage4();
begin
  exampleS:=gener.Get5word(subStage);
  Writeln('Запомните слова:');
  Writeln(exampleS);
  exampleS := Trim(exampleS);
  Sleep(8000 + (subStage-5)*2000);
  writeln('Стадия игры ', CurrentStage, '. Количество слов ', SubStage);
  writeln('Введите все слова через пробел причём каждое слово это перевёртыш в любом порядке');
  Readln(inputS);
  SplitGo.LowerRus(inputS);
  inputS := Trim(inputS);
  if G4Check(exampleS,InputS) then
  begin
    Inc(WinCount);
    Writeln('Верно');
  end
  else
  begin
    WinCount:=0;
    Writeln('Не верно');
  end;
end;

procedure Stage5();
begin
  exampleS:=gener.Get5word(subStage);
  Writeln('Запомните слова:');
  Writeln(exampleS);
  exampleS := Trim(exampleS);
  Sleep(8000 + (subStage-5)*2000);
  writeln('Стадия игры ', CurrentStage, '. Количество слов ', SubStage);
  writeln('Введите все слова через пробел причём каждое слово это перевёртыш в том же порядке');
  Readln(inputS);
  SplitGo.LowerRus(inputS);
  inputS := Trim(inputS);
  if G5Check(exampleS,InputS) then
  begin
    Inc(WinCount);
    Writeln('Верно');
  end
  else
  begin
    WinCount:=0;
    Writeln('Не верно');
  end;
end;

procedure nextStage();
begin
  //statistik Out
  StatistikOut:= 'Стадия игры ' + IntToStr(CurrentStage);
  MainFormGame.GameFrame.StatistikStageLable.Caption:= StatistikOut;
  StatistikOut:= 'Количество букв ' + IntToStr(SubStage);
  MainFormGame.GameFrame.statistikSubStageLabel.Caption:= StatistikOut;

  case CurrentStage of
    1:
    begin
      Stage1;
      StatistikOut:= 'Введите слово перевёрнутым';
      MainFormGame.GameFrame.statistikRulesLabel.Caption:= StatistikOut;
    end;
    2:
      Stage2;
    3:
      Stage3;
    4:
      Stage4;
    5:
      Stage5;
  end;
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
    Writeln('Верно');
  end
  else
  begin
    WinCount:=0;
    Writeln('Не верно');
  end;
                //3
  if WinCount = 3 then
  begin
    WinCount := 0;
    Inc(SubStage);
  end;        //9
  if SubStage = 9 then
  begin
    SubStage := 5;
    Inc(CurrentStage);
  end;
  //Sleep(1500);
end;

procedure StartGame();
begin
  gener.GetAllSArr();
  CurrentStage := 1;  //1
  subStage:=5;
  WinCount := 0;
end;

end.
