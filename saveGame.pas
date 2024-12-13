unit saveGame;

interface

uses SplitGo, System.SysUtils;
procedure loadG(var CurrentStage, subStage: integer);
procedure SaveG(CurrentStage, subStage: integer);

implementation

procedure loadG(var CurrentStage, subStage: integer);
var myFile: TextFile;
    strIn, resultStr: string;
    wordArr: SArr;
    i: integer;
begin
  AssignFile(myFile, 'SaveData.txt');
  ReSet(MyFile);
  readln(myFile, strIn);

  CurrentStage:= -1;
  subStage:= -1;
  if (strIn <> '') then begin
    resultStr:= strIn;
    while (not Eof(myFile)) do begin
      readln(myFile, strIn);
      resultStr:= resultStr + strIn;
    end;
    wordArr:= splitGo.ListOfWordsAndNum(resultStr);
    i:= Low(wordArr);
    while (i <= High(wordArr)) do begin
      if (wordArr[i] = 'currentStage') then begin
        inc(i);
        CurrentStage:= strToInt(wordArr[i]);
      end
      else if (wordArr[i] = 'subStage') then begin
        inc(i);
        subStage:= strToInt(wordArr[i]);
      end;
      inc(i);
    end;
  end;
  if (CurrentStage = -1) and (subStage = -1) then begin
    writeln('We cant find your save');
    CurrentStage:= 1; //game mode
    subStage:=5; //num of letters or words
  end;
  closeFile(myFile);
end;

{AssignFile(myFile, 'test2.txt');
   ReWrite(myFile);
   Writeln(myFile, 'My text');
   closeFile(myFile);
   ReSet(MyFile);
   while not Eof(MyFile) do begin
     readln(MyFile, X);
     writeln(x);
   end;

   closeFile(MyFile);}

procedure SaveG(CurrentStage, subStage: integer);
var myFile: TextFile;
    str: string;
begin
  AssignFile(myFile, 'SaveData.txt');
  ReWrite(myFile);
  str:= 'currentStage ' + IntToStr(CurrentStage) + ' ';
  writeln(myFile, str);
  str:= 'subStage ' + IntToStr(subStage) + ' ';
  writeln(myFile, str);
  closeFile(myFile);
end;

end.
