unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //TurnOnMusuc(doomFear);
  TurnOffMusic();
end;

end.
