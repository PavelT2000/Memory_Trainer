unit FMainCode;

interface

uses
<<<<<<< HEAD
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, MenuGame,
  Game;
=======
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, Menu,
  Vcl.ComCtrls;
>>>>>>> 126a183afc215a2b4b98047d4e75369bbcabbd91

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
<<<<<<< HEAD
    Menu: TFrame1;
    Game: TFrame2;
=======
    Button1: TButton;
    ProgressBar1: TProgressBar;
>>>>>>> 126a183afc215a2b4b98047d4e75369bbcabbd91
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

procedure UpdateProgressBar(var PB: TProgressBar; pbTime: Integer; pbQuality: Integer = 100);
var
  i: Integer;
  pbTimeStep: Integer;
begin
  PB.Max := pbQuality; // ������ ���� �����������
  pbTimeStep := pbTime div pbQuality; // ���� ��� �����������
  for i := 0 to pbQuality do
  begin
    Sleep(pbTimeStep);
    PB.Position := i;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  TurnOnMusic(doomFear);
  TurnOffMusic();

  // Test ������ �������� � ���������� ��������� (������� ��� ��������)
  // ��� - ����� �� 1.5-2 ������� ������ ��� ���������
  // ��� � �����, ���� � Sleep, �������� �� �����
  TThread.CreateAnonymousThread(procedure
  begin
    UpdateProgressBar(Form1.ProgressBar1, 5000, 100)
  end
  ).Start;


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
