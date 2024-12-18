unit SaveMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TSaveMenuFrame = class(TFrame)
    Image1: TImage;
    Save1Button: TButton;
    Save2Button: TButton;
    AutoSaveButton: TButton;
    Save3Button: TButton;
    backFrameButton: TButton;
    procedure Save1ButtonClick(Sender: TObject);
    procedure Save2ButtonClick(Sender: TObject);
    procedure Save3ButtonClick(Sender: TObject);
    procedure AutoSaveButtonClick(Sender: TObject);
    procedure backFrameButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FMainCode, saveGame, UnitGame1;

{$R *.dfm}

procedure TSaveMenuFrame.AutoSaveButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible:= True;
  saveGame.loadG(4, UnitGame1.CurrentStage, UnitGame1.subStage);
  UnitGame1.StartSaveGame;
  UnitGame1.nextStage;
end;

procedure TSaveMenuFrame.backFrameButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.MenuFrame.Visible:= True;
end;

procedure TSaveMenuFrame.Save1ButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible:= True;
  saveGame.loadG(1, UnitGame1.CurrentStage, UnitGame1.subStage);
  UnitGame1.StartSaveGame;
  UnitGame1.nextStage;
end;

procedure TSaveMenuFrame.Save2ButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible:= True;
  saveGame.loadG(2, UnitGame1.CurrentStage, UnitGame1.subStage);
  UnitGame1.StartSaveGame;
  UnitGame1.nextStage;
end;

procedure TSaveMenuFrame.Save3ButtonClick(Sender: TObject);
begin
  MainFormGame.CloseAllFrames;
  MainFormGame.GameFrame.Visible:= True;
  saveGame.loadG(2, UnitGame1.CurrentStage, UnitGame1.subStage);
  UnitGame1.StartSaveGame;
  UnitGame1.nextStage;
end;

end.
