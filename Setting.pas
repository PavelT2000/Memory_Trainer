unit Setting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type DifficultLevel = (TestMod, Easy, Medium, Hard);
{hard, no word only random letters
Medium, usuful game
Easy, winStreak only 2
TestMod, winStreak only 1 and 2 subStage in every CurStage}

type
  TSettingFrame = class(TFrame)
    BackGround: TImage;
    arrowLeftButton: TButton;
    arrowRightButton: TButton;
    difficultPanel: TPanel;
    difficultLevelNameLabel: TLabel;
    difficultLevelLabel: TLabel;
    BackInMenuButton: TButton;
    Panel1: TPanel;
    MuteMusicButton: TButton;
    procedure BackInMenuButtonClick(Sender: TObject);
    procedure MuteMusicButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var currentDifficult: DifficultLevel = Medium;

implementation

uses FMainCode, GameSound;

{$R *.dfm}

procedure TSettingFrame.BackInMenuButtonClick(Sender: TObject);
begin
  case FMainCode.preFrame of
    GameFrame: FMainCode.LoadGameFrame;
    MenuFrame: FMainCode.LoadMenuFrame;
    RulesFrame: FMainCode.LoadRulesFrame;
    SaveMenuFrame: FMainCode.LoadSaveMenuFrame;
    SettingFrame: FMainCode.LoadSettingFrame;
  end;
end;

procedure TSettingFrame.MuteMusicButtonClick(Sender: TObject);
begin
  GameSound.OnOffMuteMusic;
end;

end.
