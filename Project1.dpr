﻿program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, Windows,
  gener in 'gener.pas',
  UnitGame1 in 'UnitGame1.pas',
  UnitBasic in 'UnitBasic.pas';

var
  endGame: boolean;

begin

  UnitGame1.StartGame;
  endGame := True;
  while endGame do
  begin
    UnitGame1.nextStage;
    if (UnitGame1.CurrentStage > 5) then
    begin
      writeln('Вы прошли тренажер-памяти! Поздравляем! Вы зря потратили ',
        'свое время! Нажмите Enter для выхода из программы.');
      readln;
      endGame := False;
    end;
  end;

end.
