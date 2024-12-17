unit Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UnitGame1;

type
  TGameFrame = class(TFrame)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var GameFrame: TGameFrame;

implementation

{$R *.dfm}

procedure StartGame();
var CurrentStage, subStage: integer;
    continiunGame: boolean;
begin
  continiunGame := True;
  while continiunGame do
  begin
    UnitGame1.nextStage;
    if (UnitGame1.CurrentStage > 5) then
    begin
      writeln('Вы прошли тренажер-памяти! Поздравляем! Вы зря потратили ',
        'свое время! Нажмите Enter для выхода из программы.');
      readln;
      continiunGame := False;
    end;
  end;
  CurrentStage:= 1; //game mode
  subStage:=5; //num of letters or words
end;

procedure LoadSavegame();
begin

end;

end.
