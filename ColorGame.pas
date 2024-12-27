unit ColorGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TColorGameFrame = class(TFrame)
    BGImage: TImage;
    VisibleForColorTimer: TTimer;
    green2: TImage;
    green1: TImage;
    procedure green1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var ColorGameFrame: TColorGameFrame;

implementation

{$R *.dfm}

procedure UnEnableColors();
begin
  ColorGameFrame.green1.Enabled:= False;
end;

procedure CheckColorClick();
begin

end;

procedure TColorGameFrame.green1Click(Sender: TObject);
begin
  CheckColorClick
end;
end.