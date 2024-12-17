unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Menu: TFrame1;
    Game: TFrame2;
    procedure Button1Click(Sender: TObject);
    procedure Frame11Image1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure Frame11Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

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
  //TurnOffMusic();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Game.Visible:= False;
  Menu.Visible:= True;
end;

procedure TForm1.Frame11Image1Click(Sender: TObject);
begin
  //Frame11.Visible:=False;
end;

procedure TForm1.Frame11Image1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  {Frame11.Height:=Form1.Height;
  Frame11.Width:=Form1.Width;
  Frame11.Top:=0;
  Frame11.Left:=0;}
end;

end.
