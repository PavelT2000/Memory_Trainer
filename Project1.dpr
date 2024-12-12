program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  gener in 'gener.pas',
  UnitGame1 in 'UnitGame1.pas';

begin
UnitGame1.StartGame;
while True do
UnitGame1.nextStage;



end.
