unit gener;

interface

uses SplitGo;

var arr5, arr6, arr7, arr8: SArr;

procedure GetAllSArr();
function GetWord(num: integer): string;
function Get5Word(num: integer):string;

implementation


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

procedure GetAllSArr();
var myFile: Textfile;
    SIn: string;
    wordsArrNow, wordsArrAns: SArr;
begin
  AssignFile(myFile, 'words\dictionary5.txt');
  Reset(myFile);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    SIn := UTF8ToString(SIn);
    wordsArrNow:= SplitGo.ListOfWords(SIn);
    wordsArrAns:= compareArr(wordsArrNow, wordsArrAns);
  end;
  arr5:= copy(wordsArrAns, 0, length(wordsArrAns));
  closeFile(myFile);

  AssignFile(myFile, 'words\dictionary6.txt');
  Reset(myFile);
  setLength(wordsArrAns, 0);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    SIn := UTF8ToString(SIn);
    wordsArrNow:= SplitGo.ListOfWords(SIn);
    wordsArrAns:= compareArr(wordsArrNow, wordsArrAns);
  end;
  arr6:= copy(wordsArrAns, 0, length(wordsArrAns));
  closeFile(myFile);

  AssignFile(myFile, 'words\dictionary7.txt');
  Reset(myFile);
  setLength(wordsArrAns, 0);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    SIn := UTF8ToString(SIn);
    wordsArrNow:= SplitGo.ListOfWords(SIn);
    wordsArrAns:= compareArr(wordsArrNow, wordsArrAns);
  end;
  arr7:= copy(wordsArrAns, 0, length(wordsArrAns));
  closeFile(myFile);

  AssignFile(myFile, 'words\dictionary8.txt');
  Reset(myFile);
  setLength(wordsArrAns, 0);
  while (not EOF(myFile)) do begin
    Readln(myFile, SIn);
    SIn := UTF8ToString(SIn);
    wordsArrNow:= SplitGo.ListOfWords(SIn);
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
    randomNum: integer;
begin
  result:= '';
  for var i:= 1 to num do begin
    Randomize;    //from 0 to 3
    randomNum:= Random(4)+5;  //from 5 to 8
    word:= GetWord(randomNum);
    result:= result + word + ' ';
  end;
end;

function getWordRandLetter(numLetter: integer):string;
var randomNum: integer;
begin
  result:= '';
  Randomize;
  for var i:= 1 to numLetter do begin
    randomNum:= Random(2); //from 0 to 1
    if (randomNum = 0) then begin  //small letter
      randomNum:= Random(33) + ord('а'); //+1 (rand = max-1)
      result:= result + chr(randomNum);
    end
    else begin //big letter
      randomNum:= Random(33) + ord('А'); //+1 (rand = max-1)
      result:= result + chr(randomNum);
    end;
  end;
end;

end.
