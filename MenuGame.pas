unit MenuGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Game, GameSound, Vcl.Imaging.pngimage;

type
  TMenuFrame = class(TFrame)
    BackGround: TImage;
    LoadGame: TImage;
    NewGame: TImage;
    Rules: TImage;
    settingImage: TImage;
    MiniGamesButton: TButton;
    Bleen: TImage;
    procedure LoadGameClick(Sender: TObject);
    procedure NewGameClick(Sender: TObject);
    procedure RulesClick(Sender: TObject);
    procedure settingImageClick(Sender: TObject);
    procedure BleenClick(Sender: TObject);
    procedure MiniGamesButtonClick(Sender: TObject);
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





procedure TMenuFrame.NewGameClick(Sender: TObject);
begin
  FMainCode.LoadGameFrame;
  game.StartGame();
end;

procedure TMenuFrame.BleenClick(Sender: TObject);
begin
  FMainCode.AddBleenClick;
  Bleen.Visible := False;
end;

procedure TMenuFrame.LoadGameClick(Sender: TObject);
begin
  FMainCode.LoadSaveMenuFrame;
end;

procedure TMenuFrame.MiniGamesButtonClick(Sender: TObject);
begin
  FMainCode.LoadMiniGamesFrame;
end;

procedure TMenuFrame.RulesClick(Sender: TObject);
begin
  FMainCode.LoadRulesFrame;
end;

procedure TMenuFrame.settingImageClick(Sender: TObject);
begin
  FMainCode.LoadSettingFrame;
end;

end.
