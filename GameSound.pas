unit GameSound;

interface

type TMusic = (calmMind, doomFear, doomTear, elevator);
procedure TurnOnMusic(music: TMusic);
procedure TurnOffMusic;
procedure MuteMusic;

implementation

uses FMainCode;

var playerOn: boolean = False;
    playerMute: boolean = False;

procedure TurnOnMusic(music: TMusic);
//var SFileName: string;
begin
  if playerMute = false then begin
    case music of
      calmMind: form1.MediaPlayer1.FileName:= 'music\calmMind.mp3';
      doomFear: form1.MediaPlayer1.FileName:= 'music\doomFear.mp3';
      doomTear: form1.MediaPlayer1.FileName:= 'music\doomTear.mp3';
      elevator: form1.MediaPlayer1.FileName:= 'music\elevator.mp3';
    end;
    form1.MediaPlayer1.Open;
    form1.MediaPlayer1.Play;
  end;
end;

procedure TurnOffMusic;
begin
  if (playerOn = True) then begin
    Form1.MediaPlayer1.Stop;
    Form1.MediaPlayer1.Close;
    playerOn:= False;
  end;
end;

procedure MuteMusic;
begin
  TurnOffMusic;
  playerMute:= True;
end;

end.
