unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game, Rules;

type
  TMainFormGame = class(TForm)
    MediaPlayer1: TMediaPlayer;
    GameFrame: TGameFrame;
    MenuFrame: TMenuFrame;
    RulesFrame: TRulesFrame;
    procedure FormCreate(Sender: TObject);
    procedure CloseAllFrames;
    procedure MenuFrameNewGameButtonClick(Sender: TObject);

  private

  public

  end;

var
  MainFormGame: TMainFormGame;

implementation

{$R *.dfm}

procedure TMainFormGame.FormCreate(Sender: TObject);
begin
  GameFrame.Visible:= False;
  MenuFrame.Visible:= True;
  {MenuFrame.Visible:= False;
  GameFrame.Visible:= True;}
end;

{procedure TForm1.Frame11Image1Click(Sender: TObject);
begin
  //Frame11.Visible:=False;
end;

procedure TForm1.Frame11Image1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  Frame11.Height:=Form1.Height;
  Frame11.Width:=Form1.Width;
  Frame11.Top:=0;
  Frame11.Left:=0;
end;}

procedure TMainFormGame.CloseAllFrames;
begin
  GameFrame.Visible := False;
  MenuFrame.Visible := False;
end;

procedure TMainFormGame.MenuFrameNewGameButtonClick(Sender: TObject);
begin
  //MenuFrame.NewGameButtonClick(Sender);
  CloseAllFrames;

  GameFrame.Visible:= True;
  game.StartGame();
end;


end.
