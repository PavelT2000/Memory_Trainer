unit FMainCode;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, GameSound, Menu,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);

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

end.
