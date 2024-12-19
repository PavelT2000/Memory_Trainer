unit MenuGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Game;

type
  TMenuFrame = class(TFrame)
    Image1: TImage;
    NewGameButton: TButton;
    ContinueButton: TButton;
    RulesButton: TButton;
    Setting: TButton;
    procedure RulesButtonClick(Sender: TObject);
    procedure NewGameButtonClick(Sender: TObject);
    procedure ContinueButtonClick(Sender: TObject);
    //procedure NewGameButtonClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  MenuFrame: TMenuFrame;


implementation
uses FMainCode;

{$R *.dfm}

{procedure TMenuFrame.NewGameButtonClick(Sender: TObject);
begin
  GameFrame.Visible:= True;
  MenuFrame.Visible:= False;
  game.StartGame();
end;}

procedure TMenuFrame.NewGameButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible:= True;
  Game.GameFrameMode:= True;
  game.StartGame();
end;

procedure TMenuFrame.ContinueButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.SaveMenuFrame.Visible:= True;
end;

procedure TMenuFrame.RulesButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.RulesFrame.Visible := True;
end;

end.
