unit FMainCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game;

type
  TMainForm = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Menu: TMenuFrame;
    Game: TGameFrame;
    procedure FormCreate(Sender: TObject);

  private

  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Game.Visible:= False;
  Menu.Visible:= True;
end;

{procedure TForm1.Frame11Image1Click(Sender: TObject);
begin
  //Frame11.Visible:=False;
end;

procedure TForm1.Frame11Image1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  Frame11.Height:=Form1.Height;
  Frame11.Width:=Form1.Width;
  Frame11.Top:=0;
  Frame11.Left:=0;
end;}

end.
