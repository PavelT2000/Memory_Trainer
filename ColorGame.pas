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

//var ColorGameFrame: TColorGameFrame;
var NumOfColorChecked: integer;

implementation

{$R *.dfm}

uses FmainCode, ColorCode;

procedure UnEnableColors();
begin
  MainFormGame.ColorGameFrame.green1.Enabled:= False;
end;

procedure CheckColorClick(clickColor: ColorCode.Tcolors);
begin
  if (NumOfColorChecked >= length(ColorCode.SecretColors)) then begin
    //ColorCode.NewRound;
  end
  else begin
    //if () then

    {Case clickColor of
      ColorCode.green: colorNow:= Green;
      ColorCode.red: colorNow:= red;
      ColorCode.blue: colorNow:= blue;
      ColorCode.yellow: colorNow:= yellow;
    End;}
  end;
end;

procedure TColorGameFrame.green1Click(Sender: TObject);
Var clickColor: ColorCode.Tcolors;
begin
  clickColor:= ColorCode.green;
  CheckColorClick(clickColor);
end;

end.
