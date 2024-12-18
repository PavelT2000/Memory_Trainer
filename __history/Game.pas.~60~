unit Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UnitGame1, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls;

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
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure CheckButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public

  end;

//var GameFrame: TGameFrame;
procedure StartGame();

implementation

uses SplitGo, FMainCode;

{$R *.dfm}

procedure StartGame();
var CurrentStage, subStage: integer;
begin
  UnitGame1.StartGame;
  UnitGame1.nextStage;
  //if (UnitGame1.CurrentStage > 5) then
end;

procedure LoadSavegame();
begin

end;

procedure TGameFrame.CheckButtonClick(Sender: TObject);
var wordIn: string;
begin
  wordIn:= SlovoEdit.Text;
  SplitGo.LowerRus(wordIn);
  wordIn := Trim(wordIn);
  unitGame1.CheckAllStage(wordIn);
end;

procedure TGameFrame.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
  if ProgressBar1.Position >= ProgressBar1.Max then
  begin
    ProgressBar1.Position := ProgressBar1.Position - 1;
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Timer1.Enabled := False;
    SlovoPanel.Visible:= False;
    SlovoRememberLabel.Visible:= False;
  end;
end;

end.
