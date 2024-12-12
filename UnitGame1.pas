﻿unit UnitGame1;

interface
uses
  System.SysUtils, Windows, Gener;




procedure nextStage();

procedure StartGame();

implementation

var
  WinCount, CurrentStage,subStage: integer;
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
  Writeln(exampleS);
  Sleep(3000);
  ClearScreen;
  Readln(inputS);
  if (True) then
    Inc(WinCount);
end;

procedure Stage2();
begin
  Writeln('СТУЛ');
  Sleep(3000);
  ClearScreen;
  if (True) then
    Inc(WinCount);
end;

procedure Stage3();
begin
  Writeln('СТУЛ');
  Sleep(3000);
  ClearScreen;
  if (True) then
    Inc(WinCount);
end;

procedure Stage4();
begin
  Writeln('СТУЛ');
  Sleep(3000);
  ClearScreen;
  if (True) then
    Inc(WinCount);
end;

procedure Stage5();
begin
  Writeln('СТУЛ');
  Sleep(3000);
  ClearScreen;
  if (True) then
    Inc(WinCount);
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
  end;
  if WinCount = 3 then
  begin
    WinCount := 0;
    Inc(SubStage);
  end;
  if SubStage = 8 then
  begin
    SubStage := 5;
    Inc(CurrentStage);
  end;

end;

procedure StartGame();
begin
  CurrentStage := 1;
  subStage:=5;
  WinCount := 0;
end;

end.
