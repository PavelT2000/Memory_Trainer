unit UnitGame1;

interface

uses
  System.SysUtils, Windows, Gener, UnitBasic, SplitGo;

var CurrentStage, subStage: integer;

procedure nextStage();

procedure StartGame();

implementation

var
  WinCount: integer;
  inputS, exampleS: string;

procedure ClearScreen;
var
  hStdOut: THandle;
  csbi: _CONSOLE_SCREEN_BUFFER_INFO;
  conSize: DWORD;
  coord: TCoord;
  charsWritten: DWORD;
begin
  hStdOut := GetStdHandle(STD_OUTPUT_HANDLE);
  if hStdOut = INVALID_HANDLE_VALUE then
    Exit;
  if not GetConsoleScreenBufferInfo(hStdOut, csbi) then
    Exit;
  conSize := csbi.dwSize.X * csbi.dwSize.Y;
  coord.X := 0;
  coord.Y := 0;
  if not FillConsoleOutputCharacter(hStdOut, ' ', conSize, coord, charsWritten)
  then
    Exit;
  if not FillConsoleOutputAttribute(hStdOut, csbi.wAttributes, conSize, coord,
    charsWritten) then
    Exit;
  SetConsoleCursorPosition(hStdOut, coord);
end;

procedure Stage1();
begin
  exampleS:=gener.GetWord(subStage);
  Writeln('Запомните слово:');
  Writeln(exampleS);
  exampleS := Trim(exampleS);
  Sleep(3000 + (subStage-5)*200);
  ClearScreen;
  writeln('Стадия игры ', CurrentStage, '. Количество букв ', SubStage);
  writeln('Введите слово перевёрнутым');
  Readln(inputS);
  SplitGo.LowerRus(inputS);
  inputS := Trim(inputS);
  if G1Check(exampleS,InputS) then
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

procedure Stage2();
begin
  exampleS:=gener.Get5word(subStage);
  Writeln('Запомните слова:');
  Writeln(exampleS);
  exampleS := Trim(exampleS);
  Sleep(8000 + (subStage-5)*2000);
  ClearScreen;
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
  ClearScreen;
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
  ClearScreen;
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
  ClearScreen;
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

  case CurrentStage of
    1:
      Stage1;
    2:
      Stage2;
    3:
      Stage3;
    4:
      Stage4;
    5:
      Stage5;
  end;         //3
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
  Sleep(1500);
  ClearScreen;
end;

procedure StartGame();
begin
  gener.GetAllSArr();
  CurrentStage := 1;  //1
  subStage:=5;
  WinCount := 0;
end;

end.
