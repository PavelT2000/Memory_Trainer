unit MenuGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TFrame1 = class(TFrame)
    Image1: TImage;
    NewGameButton: TButton;
    ContinueButton: TButton;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Frame1: TFrame1;


implementation

{$R *.dfm}

end.