﻿program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Windows,
  gener in 'gener.pas',
  UnitGame1 in 'UnitGame1.pas',
  UnitBasic in 'UnitBasic.pas',
  saveGame in 'saveGame.pas',
  SplitGo in 'SplitGo.pas';

var
  endGame: boolean;

begin

  UnitGame1.StartGame;
  //saveGame.loadG(CurrentStage, subStage);
  endGame := True;
  while endGame do
  begin
    UnitGame1.nextStage;
    //saveGame.SaveG(CurrentStage, subStage);
    if (UnitGame1.CurrentStage > 5) then
    begin
      writeln('Вы прошли тренажер-памяти! Поздравляем! Вы зря потратили ',
        'свое время! Нажмите Enter для выхода из программы.');
      readln;
      endGame := False;
    end;
  end;

end.
