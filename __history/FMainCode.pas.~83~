unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game, Rules, SaveMenu;

type
  TMainFormGame = class(TForm)
    MediaPlayer1: TMediaPlayer;
    GameFrame: TGameFrame;
    MenuFrame: TMenuFrame;
    RulesFrame: TRulesFrame;
    SaveMenuFrame: TSaveMenuFrame;
    procedure FormCreate(Sender: TObject);
    procedure CloseAllFrames;

  private

  public

  end;

var
  MainFormGame: TMainFormGame;

implementation

{$R *.dfm}

procedure TMainFormGame.CloseAllFrames;
begin
  GameFrame.Visible := False;
  MenuFrame.Visible := False;
  RulesFrame.Visible:= False;
  SaveMenuFrame.Visible:= False;
end;

procedure TMainFormGame.FormCreate(Sender: TObject);
begin
  CloseAllFrames;
  MenuFrame.Visible:= True;
end;

end.
