unit Bleenchiki;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TBleenFrame = class(TFrame)
    BackGround: TImage;
    BTCimage: TImage;
    procedure BTCimageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FMainCode;

{$R *.dfm}

procedure TBleenFrame.BTCimageClick(Sender: TObject);
var
  tempFrame: AllFrames;
  Seconds, Milliseconds: UInt64;
begin
  Milliseconds := GetTickCount - SpeedRunStart;
  Seconds := Milliseconds div 1000;
  Milliseconds := Milliseconds mod 1000 div 10;

  ShowMessage('Считайте это каноническим концом игры. Спасибо за все найденные блинчики! Теперь будет что похавать голодным студентам :0 (Биткоины не выдаем, это был байт) Также вы, спидраннер, нашли все блинчики за: ' + IntToStr(Seconds) + ' сек. ' + IntToStr(Milliseconds) + ' мс.' );
  tempFrame:= nowFrame;
  nowFrame:= preFrame;
  case tempFrame of
    GameFrame:FMainCode.LoadGameFrame;
    MenuFrame: FMainCode.LoadMenuFrame;
    RulesFrame: FMainCode.LoadRulesFrame;
    SaveMenuFrame: FMainCode.LoadSaveMenuFrame;
    SettingFrame: FMainCode.LoadSettingFrame;
  end;
end;

end.