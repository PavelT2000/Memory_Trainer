unit MenuGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Game;

type
  TMenuFrame = class(TFrame)
    Image1: TImage;
    NewGameButton: TButton;
    ContinueButton: TButton;
    RulesButtom: TButton;
    procedure NewGameButtonClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  MenuFrame: TMenuFrame;


implementation

{$R *.dfm}

procedure TMenuFrame.NewGameButtonClick(Sender: TObject);
begin
  GameFrame.Visible:= True;
  MenuFrame.Visible:= False;
end;

end.
