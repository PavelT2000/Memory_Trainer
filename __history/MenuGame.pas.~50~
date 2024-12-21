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
    Exit: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure RulesButtonClick(Sender: TObject);
    
    procedure LoadGameClick(Sender: TObject);
    procedure NewGameClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TMenuFrame.Button1Click(Sender: TObject);
begin
  FMainCode.LoadSettingFrame;
end;

procedure TMenuFrame.Button2Click(Sender: TObject);
begin
  FMainCode.LoadRulesFrame;
end;

procedure TMenuFrame.LoadGameClick(Sender: TObject);
begin
  FMainCode.LoadSaveMenuFrame;
end;

procedure TMenuFrame.RulesButtonClick(Sender: TObject);
begin
  FMainCode.LoadRulesFrame;
end;

end.
