unit saveGame;

interface

uses UnitGame1, SplitGo, System.SysUtils;

procedure loadG(saveNum: integer; var CurrentStage, subStage, CurrentHint: integer;
var CurrentDifficult: UnitGame1.AllDifficult);
procedure SaveG(SaveNum, CurrentStage, subStage, CurrentHint: integer;
CurrentDifficult: UnitGame1.AllDifficult);

implementation

uses Vcl.Dialogs;

procedure loadG(saveNum: integer; var CurrentStage, subStage, CurrentHint: integer;
var CurrentDifficult: UnitGame1.AllDifficult);
var myFile: TextFile;
    strIn, resultStr: string;
    wordArr: SArr;
    i: integer;
    isAllCorrect: boolean;
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
    CurrentHint:= -1;
    isAllCorrect:= False;
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
        end
        else if (wordArr[i] = 'CurrentHint') then begin
          inc(i);
          CurrentHint:= strToInt(wordArr[i]);
        end
        else if (wordArr[i] = 'CurrentDifficult') then begin
          inc(i);
          if (wordArr[i] = 'Demo') then begin
          CurrentDifficult:= Demo;
          isAllCorrect:= True;
          end
          else if (wordArr[i] = 'Easy') then begin
          CurrentDifficult:= Easy;
          isAllCorrect:= True;
          end
          else if (wordArr[i] = 'Medium') then begin
          CurrentDifficult:= Medium;
          isAllCorrect:= True;
          end
          else if (wordArr[i] = 'Hard') then begin
          CurrentDifficult:= Hard;
          isAllCorrect:= True;
          end;
        end;
        inc(i);
      end;
    end;
    if (CurrentStage = -1) or (subStage = -1) or (CurrentHint = -1) or (not isAllCorrect) then begin
      ShowMessage('We cant find your save, loading basic game...');
      CurrentStage:= UnitGame1.basicCurrentStage; //game mode
      subStage:= UnitGame1.basicSubStage; //num of letters or words
      CurrentHint:= UnitGame1.basicHint;
    end;
    closeFile(myFile);
  end;
  except
    ShowMessage('We cant find your save, loading basic game...');
    CurrentStage:= UnitGame1.basicCurrentStage; //game mode
    subStage:= UnitGame1.basicSubStage; //num of letters or words
    CurrentHint:= UnitGame1.basicHint;
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

procedure SaveG(SaveNum, CurrentStage, subStage, CurrentHint: integer;
CurrentDifficult: UnitGame1.AllDifficult);
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
  str:= 'CurrentHint ' + IntToStr(CurrentHint) + ' ';
  writeln(myFile, str);
  str:= 'CurrentDifficult ';
  case CurrentDifficult of
    Demo: str:= str + 'Demo ';
    Easy: str:= str + 'Easy ';
    Medium: str:= str + 'Medium ';
    Hard: str:= str + 'Hard ';
  end;
  writeln(myFile, str);

  closeFile(myFile);
  showMessage('Игра была сохранена!');
end;

end.
