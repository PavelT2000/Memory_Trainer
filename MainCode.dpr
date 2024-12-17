program MainCode;

uses
  Vcl.Forms,
  FMainCode in 'FMainCode.pas' {MainFormGame},
  GameSound in 'GameSound.pas',
  SplitGo in 'SplitGo.pas',
  saveGame in 'saveGame.pas',
  UnitBasic in 'UnitBasic.pas',
  UnitGame1 in 'UnitGame1.pas',
  gener in 'gener.pas',
  MenuGame in 'MenuGame.pas' {MenuFrame: TFrame},
  Game in 'Game.pas' {GameFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainFormGame, MainFormGame);
  Application.Run;
end.
