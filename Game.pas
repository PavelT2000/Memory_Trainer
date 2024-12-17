﻿unit Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UnitGame1, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TGameFrame = class(TFrame)
    bg: TImage;
    SlovoEdit: TEdit;
    SlovoPanel: TPanel;
    statistikPanel: TPanel;
    StatistikStageLable: TLabel;
    statistikSubStageLabel: TLabel;
    statistikRulesLabel: TLabel;
    CheckButton: TButton;
    SlovoRememberLabel: TLabel;
    procedure CheckButtonClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var GameFrame: TGameFrame;
procedure StartGame();

implementation

uses SplitGo;

{$R *.dfm}

procedure StartGame();
var CurrentStage, subStage: integer;
    continiunGame: boolean;
begin
  UnitGame1.StartGame;
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
end;

procedure LoadSavegame();
begin

end;

procedure TGameFrame.CheckButtonClick(Sender: TObject);
var wordIn: string;
begin
  wordIn:= GameFrame.SlovoEdit.Text;
  SplitGo.LowerRus(wordIn);
  wordIn := Trim(wordIn);
  unitGame1.CheckAllStage(wordIn);
end;

end.
