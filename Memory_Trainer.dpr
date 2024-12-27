program Memory_Trainer;

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
  Game in 'Game.pas' {GameFrame: TFrame},
  Rules in 'Rules.pas' {RulesFrame: TFrame},
  SaveMenu in 'SaveMenu.pas' {SaveMenuFrame: TFrame},
  Setting in 'Setting.pas' {SettingFrame: TFrame},
  MiniGames in 'MiniGames.pas' {MiniGamesFrame: TFrame},
  Bleenchiki in 'Bleenchiki.pas' {BleenFrame: TFrame},
  ColorGame in 'ColorGame.pas' {ColorGameFrame: TFrame},
  ColorCode in 'ColorCode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainFormGame, MainFormGame);
  Application.Run;
end.