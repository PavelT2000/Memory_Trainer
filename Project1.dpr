﻿program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, Windows,
  gener in 'gener.pas',
  UnitGame1 in 'UnitGame1.pas',
  UnitBasic in 'UnitBasic.pas';

var str:string;
begin


readln(str);

UnitGame1.StartGame;
while True do
UnitGame1.nextStage;
end.
