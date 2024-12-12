unit gener;

interface

type SArr = array of string;
var arr5, arr6, arr7, arr8: SArr;

procedure GetAllSArr(var arr5, arr6, arr7, arr8: SArr);
function GetWord(num: integer): string;
function Get5Word(num: integer):string;

implementation



procedure LowerRus(var s1: String);
var
  len, i: Integer;
begin
  len := Length(s1);
  for i := 1 to len do
    begin
      if (s1[i] >= 'А') and (s1[i] <= 'Я') then
        s1[i] := Chr(Ord(s1[i])+32)
    end;
end;

function NumOfWords(str: string): integer;
begin
  insert(' ', str, 1);
  str := str + ' ';
  result := 0;
  for var i := 1 to length(str) - 1 do
  begin
    if ((str[i] = ' ') and (str[i + 1] <> ' ')) then
      result := result + 1;
  end;
end;

function ListOfWords(str: string): SArr;
var
  startPos, endPos, wordNow, CountWords: integer;
  startFlag, endFlag: boolean;
  word: string;
begin
  insert(' ', str, 1);
  str := str + ' ';
  CountWords:= NumOfWords(str);
  setLength(result, CountWords);
  startFlag := False;
  endFlag := False;
  wordNow := 0;
  for var i := 1 to length(str) - 1 do
  begin
    if ((str[i] = ' ') and (str[i + 1] <> ' ')) then
    begin
      startPos := i + 1;
      startFlag := True;
    end;
    if ((str[i] <> ' ') and (str[i + 1] = ' ')) then
    begin
      endPos := i;
      endFlag := True;
    end;
    if (startFlag and endFlag) then
    begin
      word:= copy(str, startPos, endPos - startPos + 1);
      LowerRus(word);
      result[wordNow] := word;
      wordNow := wordNow + 1;
      startFlag := False;
      endFlag := False;
    end;
  end;
end;

function compareArr(arr1, arr2: SArr): SArr;
var k: integer;
begin
  setlength(result, length(arr1)+length(arr2));
  k:= 0;
  for var i := Low(arr1) to High(arr1) do begin
    result[k]:= arr1[i];
    inc(k);
  end;
  for var i := Low(arr2) to High(arr2) do begin
    result[k]:= arr2[i];
    inc(k);
  end;
end;

procedure GetAllSArr(var arr5, arr6, arr7, arr8: SArr);
var myFile: Textfile;
    SIn: string;
    wordsArrNow, wordsArrAns: SArr;
begin
  AssignFile(myFile, 'dictionary5.txt');
  Reset(myFile);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    wordsArrNow:= ListOfWords(SIn);
    wordsArrAns:= compareArr(wordsArrNow, wordsArrAns);
  end;
  arr5:= copy(wordsArrAns, 0, length(wordsArrAns));
  closeFile(myFile);

  AssignFile(myFile, 'dictionary6.txt');
  Reset(myFile);
  setLength(wordsArrAns, 0);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    wordsArrNow:= ListOfWords(SIn);
    wordsArrAns:= compareArr(wordsArrNow, wordsArrAns);
  end;
  arr6:= copy(wordsArrAns, 0, length(wordsArrAns));
  closeFile(myFile);

  AssignFile(myFile, 'dictionary7.txt');
  Reset(myFile);
  setLength(wordsArrAns, 0);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    wordsArrNow:= ListOfWords(SIn);
    wordsArrAns:= compareArr(wordsArrNow, wordsArrAns);
  end;
  arr7:= copy(wordsArrAns, 0, length(wordsArrAns));
  closeFile(myFile);

  AssignFile(myFile, 'dictionary8.txt');
  Reset(myFile);
  setLength(wordsArrAns, 0);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    wordsArrNow:= ListOfWords(SIn);
    wordsArrAns:= compareArr(wordsArrNow, wordsArrAns);
  end;
  arr8:= copy(wordsArrAns, 0, length(wordsArrAns));
  closeFile(myFile);
end;

function GetWord(num: integer): string;
var randomNum: integer;
begin
  Randomize;
  if (num = 5) then begin
    randomNum:= Random(length(arr5));
    result:= arr5[randomNum];
  end
  else if (num = 6) then begin
    randomNum:= Random(length(arr6));
    result:= arr6[randomNum];
  end
  else if (num = 7) then begin
    randomNum:= Random(length(arr7));
    result:= arr7[randomNum];
  end
  else if (num = 8) then begin
    randomNum:= Random(length(arr8));
    result:= arr8[randomNum];
  end;
end;

function Get5Word(num: integer):string;
var word: string;
begin
result:= '';
  if (num = 5) then begin
    for var i:= 1 to 5 do begin
      word:= GetWord(5);
      result:= result + word + ' ';
    end;
  end
  else if (num = 6) then begin
    for var i:= 1 to 5 do begin
      word:= GetWord(6);
      result:= result + word + ' ';
    end;
  end
  else if (num = 7) then begin
    for var i:= 1 to 5 do begin
      word:= GetWord(7);
      result:= result + word + ' ';
    end;
  end
  else if (num = 8) then begin
    for var i:= 1 to 5 do begin
      word:= GetWord(8);
      result:= result + word + ' ';
    end;
  end;
end;

end.
