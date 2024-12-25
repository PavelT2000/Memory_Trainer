unit MiniGames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TMiniGamesFrame = class(TFrame)
    BGImage: TImage;
    GameRememberColorButton: TButton;
    procedure GameRememberColorButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FMainCode;

{$R *.dfm}

procedure TMiniGamesFrame.GameRememberColorButtonClick(Sender: TObject);
begin
  FMainCode.LoadColorGameFrame;
end;

end.
