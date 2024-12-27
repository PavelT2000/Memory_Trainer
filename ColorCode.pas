unit ColorCode;

interface

type Tcolors = (green, red, blue, yellow);
     TArrOfColors = array of Tcolors;

var colorNow: Tcolors;
    CollorsFromUser, SecretColors: TArrOfColors;

implementation

//gener array of colors
procedure GenerColors(numOfColors: integer; var ColorsArr: TArrOfColors);
var colorNow: Tcolors;
    ColorNumNow, ColorNumPre, SizeOfTColors: integer;
begin
  //I want gener colors with little part of same color in row
  if (numOfColors > 0) then begin
    setLength(ColorsArr, numOfColors);
    SizeOfTColors:= 4; //количество цветов
    randomize;
    //first color
    ColorNumNow:= random(SizeOfTColors);
    Case ColorNumNow of
      0: colorNow:= Green;
      1: colorNow:= red;
      2: colorNow:= blue;
      3: colorNow:= yellow;
    End;
    while (NumOfColors > 0) do begin
      ColorNumPre:= ColorNumNow;
      ColorNumNow:= random(SizeOfTColors);
      if (ColorNumNow = ColorNumPre) then begin   //same color
        //random number, if number 0 then add 2 same colors in row
        if (Random(6) = 0) then begin
          Case ColorNumNow of
            0: colorNow:= Green;
            1: colorNow:= red;
            2: colorNow:= blue;
            3: colorNow:= yellow;
          End;
          ColorsArr[NumOfColors-1]:= ColorNow;
          dec(NumOfColors);
        end
      end
      else begin     //different colors
        Case ColorNumNow of
          0: colorNow:= Green;
          1: colorNow:= red;
          2: colorNow:= blue;
          3: colorNow:= yellow;
        End;
        ColorsArr[NumOfColors-1]:= ColorNow;
        dec(NumOfColors);
      end;
    end;
  end
  else begin
    setLength(ColorsArr, 0);
  end;
end;

end.