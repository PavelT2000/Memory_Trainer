unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game, Rules, SaveMenu, Setting, UnitGame1, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TMainFormGame = class(TForm)
    MediaPlayer1: TMediaPlayer;
    GameFrame: TGameFrame;
    MenuFrame: TMenuFrame;
    RulesFrame: TRulesFrame;
    SaveMenuFrame: TSaveMenuFrame;
    SettingFrame: TSettingFrame;
    settingButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure CloseAllFrames;
    procedure SettingButtonClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure settingClick(Sender: TObject);

  private

  public

  end;

type AllFrames = (GameFrame, MenuFrame, RulesFrame, SaveMenuFrame, SettingFrame);

var
  MainFormGame: TMainFormGame;
  preFrame: AllFrames;
  nowFrame: AllFrames = MenuFrame;

procedure LoadGameFrame();
procedure LoadMenuFrame();
procedure LoadRulesFrame();
procedure LoadSaveMenuFrame();
procedure LoadSettingFrame();

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
  preFrame:= nowFrame;
  nowFrame:= GameFrame;
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible := True;
  {MainFormGame.MenuFrame.Visible := False;
  MainFormGame.RulesFrame.Visible:= False;
  MainFormGame.SaveMenuFrame.Visible:= False;
  MainFormGame.SettingFrame.Visible:= False;}
  GameSound.TurnOnMusuc(GameSound.doomFear);
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
  GameSound.TurnOnMusuc(GameSound.elevator);
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

procedure TMainFormGame.FormCreate(Sender: TObject);
begin
  LoadMenuFrame;
end;

procedure TMainFormGame.Image1Click(Sender: TObject);
begin
   LoadSettingFrame
end;

procedure TMainFormGame.SettingButtonClick(Sender: TObject);
begin
  LoadSettingFrame;
end;

procedure TMainFormGame.settingClick(Sender: TObject);
begin
  MainFormGame.settingButton.Visible:= False;
  LoadSettingFrame;
end;

end.

