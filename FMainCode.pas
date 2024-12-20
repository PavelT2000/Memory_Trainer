unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game, Rules, SaveMenu, Setting;

type
  TMainFormGame = class(TForm)
    MediaPlayer1: TMediaPlayer;
    GameFrame: TGameFrame;
    MenuFrame: TMenuFrame;
    RulesFrame: TRulesFrame;
    SaveMenuFrame: TSaveMenuFrame;
    SettingFrame: TSettingFrame;
    procedure FormCreate(Sender: TObject);
    procedure CloseAllFrames;

  private

  public

  end;

var
  MainFormGame: TMainFormGame;

procedure LoadGameFrame();
procedure LoadMenuFrame();
procedure LoadRulesFrame();
procedure LoadSaveMenuFrame();
procedure LoadSettingsFrame();

implementation

{$R *.dfm}

procedure TMainFormGame.CloseAllFrames;
begin
  GameFrame.Visible := False;
  MenuFrame.Visible := False;
  RulesFrame.Visible:= False;
  SaveMenuFrame.Visible:= False;
  SettingFrame.Visible:= False;
end;

procedure LoadGameFrame();
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible := True;
  GameSound.TurnOnMusuc(GameSound.doomFear);
  Game.GameFrameMode:= true;
end;

procedure LoadMenuFrame();
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.MenuFrame.Visible := True;
  GameSound.TurnOnMusuc(GameSound.calmMind);
  Game.GameFrameMode:= false;
end;

procedure LoadRulesFrame();
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.RulesFrame.Visible:= True;
  GameSound.TurnOnMusuc(GameSound.elevator);
end;

procedure LoadSaveMenuFrame();
begin
  if (game.GameFrameMode = true) then begin
    MainFormGame.SaveMenuFrame.AutoSaveButton.Visible:= False;
  end
  else begin
    MainFormGame.SaveMenuFrame.AutoSaveButton.Visible:= True;
  end;
  MainFormGame.CloseAllFrames;
  MainFormGame.SaveMenuFrame.Visible:= True;
  GameSound.TurnOnMusuc(GameSound.elevator);
end;

procedure LoadSettingsFrame();
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.SettingFrame.Visible:= True;
  GameSound.TurnOnMusuc(GameSound.elevator);
end;

procedure TMainFormGame.FormCreate(Sender: TObject);
begin
  FMainCode.LoadMenuFrame
end;

end.

