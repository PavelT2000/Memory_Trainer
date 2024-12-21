unit Rules;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TRulesFrame = class(TFrame)
    BackGround: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    FromRuleToMenuButton: TButton;
    procedure FromRuleToMenuButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FMainCode;

{$R *.dfm}

procedure TRulesFrame.FromRuleToMenuButtonClick(Sender: TObject);
begin
  FMainCode.LoadMenuFrame;
end;

end.
