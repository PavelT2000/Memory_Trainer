unit Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFrame2 = class(TFrame)
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Timer1: TTimer;
    Panel1: TPanel;
    procedure ButtonProgressBarTest1(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// ��������� ������ �������� ����
procedure TFrame2.ButtonProgressBarTest1(Sender: TObject);
var
  pbTime: Integer;
begin
  pbTime := 5000; // ����� � ������������� ����������� ����
  timer1.Interval := pbTime div 100;
  timer1.Enabled := True;
end;


procedure TFrame2.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position+1;

  // ����� �������� �������� ����
  Panel1.Caption := IntToStr(ProgressBar1.Position) + ' %';

  if ProgressBar1.Position >= ProgressBar1.Max then
  begin
    // ��� ����� ���������� ����
    timer1.Enabled := False;
    Button1.Caption := '�����';
  end;
end;

end.
