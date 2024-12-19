unit saveGame;

interface

uses SplitGo, System.SysUtils;
procedure loadG(SaveNum: integer; var CurrentStage, subStage: integer);
procedure SaveG(SaveNum, CurrentStage, subStage: integer);

implementation

uses Vcl.Dialogs, UnitGame1;

procedure loadG(saveNum: integer; var CurrentStage, subStage: integer);
var myFile: TextFile;
    strIn, resultStr: string;
    wordArr: SArr;
    i: integer;
begin
  try begin
    if (SaveNum = 1) then begin
      AssignFile(myFile, 'saves\SaveData1.txt');
    end
    else if (SaveNum = 2) then begin
      AssignFile(myFile, 'saves\SaveData2.txt');
    end
    else if (SaveNum = 3) then begin
      AssignFile(myFile, 'saves\SaveData3.txt');
    end
    else if (SaveNum = 4) then begin
      AssignFile(myFile, 'saves\SaveData4.txt');
    end;

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
      ShowMessage('We cant find your save, loading basic game...');
      CurrentStage:= UnitGame1.basicCurrentStage; //game mode
      subStage:= UnitGame1.basicSubStage; //num of letters or words
    end;
    closeFile(myFile);
  end;
  except
    ShowMessage('We cant find your save, loading basic game...');
    CurrentStage:= UnitGame1.basicCurrentStage; //game mode
    subStage:= UnitGame1.basicSubStage; //num of letters or words
  end;
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

procedure SaveG(SaveNum, CurrentStage, subStage: integer);
var myFile: TextFile;
    str: string;
begin
  if (SaveNum = 1) then begin
    AssignFile(myFile, 'saves\SaveData1.txt');
  end
  else if (SaveNum = 2) then begin
    AssignFile(myFile, 'saves\SaveData2.txt');
  end
  else if (SaveNum = 3) then begin
    AssignFile(myFile, 'saves\SaveData3.txt');
  end
  else if (SaveNum = 4) then begin
    AssignFile(myFile, 'saves\SaveData4.txt');
  end;
  ReWrite(myFile);
  str:= 'currentStage ' + IntToStr(CurrentStage) + ' ';
  writeln(myFile, str);
  str:= 'subStage ' + IntToStr(subStage) + ' ';
  writeln(myFile, str);

  closeFile(myFile);
end;

end.
