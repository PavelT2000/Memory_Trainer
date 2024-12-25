﻿unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game, Rules, SaveMenu, Setting, UnitGame1, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  MiniGames, Bleenchiki, ColorGame;

type
  TMainFormGame = class(TForm)
    MediaPlayer1: TMediaPlayer;
    GameFrame: TGameFrame;
    MenuFrame: TMenuFrame;
    RulesFrame: TRulesFrame;
    SaveMenuFrame: TSaveMenuFrame;
    SettingFrame: TSettingFrame;
    MiniGamesFrame: TMiniGamesFrame;
    BleenFrame: TBleenFrame;
    ColorGameFrame: TColorGameFrame;
    procedure FormCreate(Sender: TObject);
    procedure CloseAllFrames;
    procedure MediaPlayer1Notify(Sender: TObject);

  private

  public

  end;

type AllFrames = (GameFrame, MenuFrame, RulesFrame, SaveMenuFrame, SettingFrame, MiniGamesFrame, BleenFrame);

var
  MainFormGame: TMainFormGame;
  preFrame: AllFrames;
  nowFrame: AllFrames = MenuFrame;
  bleenCounter: Integer = 0;
  SpeedRunStart: UInt64;

procedure LoadGameFrame();
procedure LoadMenuFrame();
procedure LoadRulesFrame();
procedure LoadSaveMenuFrame();
procedure LoadSettingFrame();
procedure LoadMiniGamesFrame();
procedure LoadColorGameFrame();
procedure AddBleenClick();

implementation

{$R *.dfm}

procedure TMainFormGame.CloseAllFrames;
begin
  GameFrame.Visible := False;
  MenuFrame.Visible := False;
  RulesFrame.Visible:= False;
  SaveMenuFrame.Visible:= False;
  SettingFrame.Visible:= False;
  MiniGamesFrame.Visible:= False;
  BleenFrame.Visible := False;
  ColorGameFrame.Visible:= False;
end;

//for load any Frame we have function
procedure LoadGameFrame();
begin
  preFrame:= nowFrame;
  nowFrame:= GameFrame;
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible := True;
  case CurrentDifficult of
    Demo: GameSound.TurnOnMusuc(GameSound.relax);
    Easy: GameSound.TurnOnMusuc(GameSound.vibes);
    Medium: GameSound.TurnOnMusuc(GameSound.vibes);
    Hard: GameSound.TurnOnMusuc(GameSound.doomFear);
  end;
  Game.GameFrameMode:= true;
end;

procedure LoadMenuFrame();
begin
  preFrame:= nowFrame;
  nowFrame:= MenuFrame;
  MainFormGame.CloseAllFrames;
  MainFormGame.MenuFrame.Visible := True;
  GameSound.TurnOnMusuc(GameSound.calmMind);
  Game.GameFrameMode:= false;
end;

procedure LoadMiniGamesFrame();
begin
  preFrame:= nowFrame;
  nowFrame:= Rulesframe;
  MainFormGame.CloseAllFrames;
  MainFormGame.MiniGamesFrame.Visible:= True;
  GameSound.TurnOnMusuc(GameSound.vibes);
end;

procedure LoadColorGameFrame();
begin
  preFrame:= nowFrame;
  nowFrame:= Rulesframe;
  MainFormGame.CloseAllFrames;
  MainFormGame.ColorGameFrame.Visible:= True;
  GameSound.TurnOnMusuc(GameSound.doomTear);
end;

procedure LoadRulesFrame();
begin
  preFrame:= nowFrame;
  nowFrame:= Rulesframe;
  MainFormGame.CloseAllFrames;
  MainFormGame.RulesFrame.Visible:= True;
  GameSound.TurnOnMusuc(GameSound.vibes);
end;

procedure LoadSaveMenuFrame();
begin
  preFrame:= nowFrame;
  nowFrame:= SaveMenuFrame;
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

procedure LoadSettingFrame();
begin
  //MainFormGame.settingPanel.Visible:= False;
  preFrame:= nowFrame;
  nowFrame:= SettingFrame;
  if (game.GameFrameMode = True) then begin
    MainFormGame.SettingFrame.arrowRightButton.Visible:= False;
    MainFormGame.SettingFrame.arrowLeftButton.Visible:= False;
    MainFormGame.SettingFrame.difficultPanel.Visible:= False;
  end
  else begin
    MainFormGame.SettingFrame.arrowRightButton.Visible:= True;
    MainFormGame.SettingFrame.arrowLeftButton.Visible:= True;
    MainFormGame.SettingFrame.difficultPanel.Visible:= True;
    case UnitGame1.CurrentDifficult of
      UnitGame1.Demo: MainFormGame.SettingFrame.difficultLevelLabel.Caption:= 'Demo';
      UnitGame1.Easy: MainFormGame.SettingFrame.difficultLevelLabel.Caption:= 'Easy';
      UnitGame1.Medium: MainFormGame.SettingFrame.difficultLevelLabel.Caption:= 'Medium';
      UnitGame1.Hard: MainFormGame.SettingFrame.difficultLevelLabel.Caption:= 'Hard';
    end;
  end;
  MainFormGame.CloseAllFrames;
  MainFormGame.SettingFrame.Visible:= True;
  GameSound.TurnOnMusuc(GameSound.elevator);
end;

//logic when we find any secret bleen
procedure AddBleenClick();
begin
  //preFrame:= nowFrame;
  //nowFrame:= BleenFrame;
  Inc(bleenCounter);
  ShowMessage('Вы нашли ' + IntToStr(bleenCounter) + ' / 5 блинчиков!');
  if bleenCounter >= 5 then
  begin
    MainFormGame.CloseAllFrames;
    MainFormGame.BleenFrame.Visible:= True;
    GameSound.TurnOnMusuc(GameSound.bleenSong);
  end;
end;

//when our app start it begin there
procedure TMainFormGame.FormCreate(Sender: TObject);
begin
  LoadMenuFrame;
  SpeedRunStart := GetTickCount64;
end;

// This procedure will repeat a song, when it completed
procedure TMainFormGame.MediaPlayer1Notify(Sender: TObject);
begin
  if MediaPlayer1.NotifyValue = nvSuccessful then begin
    //restart the song
    MediaPlayer1.Play;
  end;
end;

end.

