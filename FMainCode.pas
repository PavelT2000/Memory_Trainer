unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game, Rules, SaveMenu, Setting, UnitGame1, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  MiniGames, Bleenchiki;

type
  TMainFormGame = class(TForm)
    MediaPlayer1: TMediaPlayer;
    GameFrame: TGameFrame;
    MenuFrame: TMenuFrame;
    RulesFrame: TRulesFrame;
    SaveMenuFrame: TSaveMenuFrame;
    SettingFrame: TSettingFrame;
    MiniGamesFrame: TFrame1;
    BleenFrame: TBleenFrame;
    procedure FormCreate(Sender: TObject);
    procedure CloseAllFrames;
    procedure settingImageClick(Sender: TObject);
    procedure MenuFrameRulesClick(Sender: TObject);
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
end;

procedure LoadGameFrame();
begin
  preFrame:= nowFrame;
  nowFrame:= GameFrame;
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible := True;
  {MainFormGame.MenuFrame.Visible := False;
  MainFormGame.RulesFrame.Visible:= False;
  MainFormGame.SaveMenuFrame.Visible:= False;
  MainFormGame.SettingFrame.Visible:= False;}
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

procedure TMainFormGame.MenuFrameRulesClick(Sender: TObject);
begin
  MenuFrame.RulesClick(Sender);

end;

//procedure TMainFormGame.RulesFrameBleenClick(Sender: TObject);
//begin
//  RulesFrame.BleenClick(Sender)
//end;

procedure TMainFormGame.settingImageClick(Sender: TObject);
begin
  LoadSettingFrame;
end;


{procedure TMainFormGame.SettingButtonClick(Sender: TObject);
begin
  LoadSettingFrame;
end;}

{procedure TMainFormGame.settingClick(Sender: TObject);
begin
  MainFormGame.settingImage.Visible:= False;
  LoadSettingFrame;
end;}

end.

