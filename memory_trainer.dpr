program memory_trainer;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Windows;

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
