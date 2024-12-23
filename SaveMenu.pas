unit SaveMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TSaveMenuFrame = class(TFrame)
    BackGround: TImage;
    Save1Button: TButton;
    Save2Button: TButton;
    AutoSaveButton: TButton;
    Save3Button: TButton;
    backFrameButton: TButton;
    procedure Save2ButtonClick(Sender: TObject);
    procedure Save3ButtonClick(Sender: TObject);
    procedure AutoSaveButtonClick(Sender: TObject);
    procedure backFrameButtonClick(Sender: TObject);
    procedure Save1ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FMainCode, saveGame, UnitGame1, Game;

var saveNumButton: integer;

{$R *.dfm}

procedure TSaveMenuFrame.backFrameButtonClick(Sender: TObject);
begin
  if (Game.GameFrameMode = True) then begin
    FMainCode.LoadGameFrame;
  end
  else begin
    FMainCode.LoadMenuFrame;
  end;
end;

procedure SaveOrLoadOnButton(numSave: integer);
begin
  if (Game.GameFrameMode = True) then begin
    saveGame.SaveG(numSave, UnitGame1.CurrentStage, UnitGame1.subStage, UnitGame1.CurrentHint, CurrentDifficult);
    FmainCode.LoadMenuFrame;
  end
  else begin
    FMainCode.LoadGameFrame;
    saveGame.loadG(numSave, UnitGame1.CurrentStage, UnitGame1.subStage, UnitGame1.CurrentHint, CurrentDifficult);
    UnitGame1.StartSaveGame;
    UnitGame1.nextStage;
  end;
end;

procedure TSaveMenuFrame.Save1ButtonClick(Sender: TObject);
begin
  SaveOrLoadOnButton(1);
end;

procedure TSaveMenuFrame.Save2ButtonClick(Sender: TObject);
begin
  SaveOrLoadOnButton(2);
end;

procedure TSaveMenuFrame.Save3ButtonClick(Sender: TObject);
begin
  SaveOrLoadOnButton(3);
end;

procedure TSaveMenuFrame.AutoSaveButtonClick(Sender: TObject);
begin
  SaveOrLoadOnButton(4);
end;

end.
