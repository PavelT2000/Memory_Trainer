program MainCode;

uses
  Vcl.Forms,
  FMainCode in 'FMainCode.pas' {Form1},
  GameSound in 'GameSound.pas',
  SplitGo in 'SplitGo.pas',
  saveGame in 'saveGame.pas',
  UnitBasic in 'UnitBasic.pas',
  UnitGame1 in 'UnitGame1.pas',
  gener in 'gener.pas',
  Menu in 'Menu.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
