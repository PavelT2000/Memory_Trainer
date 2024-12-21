unit GameSound;

interface

type TMusic = (calmMind, doomFear, doomTear, elevator);
procedure TurnOnMusuc(music: TMusic);
procedure TurnOffMusic;
procedure OnOffMuteMusic;

implementation

uses FMainCode;

var playerOn: boolean = False;
    playerMute: boolean = False;

procedure TurnOnMusuc(music: TMusic);
//var SFileName: string;
begin
  if playerMute = false then begin
    playerOn:= True;
    case music of
      calmMind: MainFormGame.MediaPlayer1.FileName:= 'music\calmMind.mp3';
      doomFear: MainFormGame.MediaPlayer1.FileName:= 'music\doomFear.mp3';
      doomTear: MainFormGame.MediaPlayer1.FileName:= 'music\doomTear.mp3';
      elevator: MainFormGame.MediaPlayer1.FileName:= 'music\elevator.mp3';
    end;
    MainFormGame.MediaPlayer1.Open;
    MainFormGame.MediaPlayer1.Play;
  end;
end;

procedure TurnOffMusic;
begin
  if (playerOn = True) then begin
    MainFormGame.MediaPlayer1.Stop;
    MainFormGame.MediaPlayer1.Close;
    playerOn:= False;
  end;
end;

procedure OnOffMuteMusic;
begin
  if (playerMute = True) then begin
    playerMute:= False;
    if (MainFormGame.GameFrame.Visible = true) then begin
      TurnOnMusuc(GameSound.doomFear);
    end;
    if (MainFormGame.MenuFrame.Visible = true) then begin
      TurnOnMusuc(GameSound.calmMind);
    end;
    if (MainFormGame.RulesFrame.Visible = true) then begin
      TurnOnMusuc(GameSound.elevator);
    end;
    if (MainFormGame.SaveMenuFrame.Visible = true) then begin
      TurnOnMusuc(GameSound.elevator);
    end;
    if (MainFormGame.SettingFrame.Visible = true) then begin
      TurnOnMusuc(GameSound.elevator);
    end;
  end
  else begin
    playerMute:= True;
    TurnOffMusic;
  end;
end;

end.
