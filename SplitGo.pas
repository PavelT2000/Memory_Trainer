﻿unit SplitGo;

interface

type SArr = array of string;

procedure LowerRus(var s1: String);
function ListOfWords(str: string): SArr;
function ListOfWordsAndNum(str: string): SArr;

implementation

uses System.SysUtils;
const //splitSimbol: string = ' ,;.';
      rusLetters: string = 'ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ';
      engLettersAndNum: string = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789';

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
    if ((not rusLetters.contains(str[i])) and rusLetters.contains(str[i+1])) then
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
    if ((not rusLetters.contains(str[i])) and rusLetters.contains(str[i+1])) then
    begin
      startPos := i + 1;
      startFlag := True;
    end;
    if (rusLetters.contains(str[i]) and (not rusLetters.contains(str[i+1]))) then
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

function NumOfWordsAndNum(str: string): integer;
begin
  insert(' ', str, 1);
  str := str + ' ';
  result := 0;
  for var i := 1 to length(str) - 1 do
  begin
    if ((not engLettersAndNum.contains(str[i])) and engLettersAndNum.contains(str[i+1])) then
      result := result + 1;
  end;
end;

function ListOfWordsAndNum(str: string): SArr;
var
  startPos, endPos, wordNow, CountWords: integer;
  startFlag, endFlag: boolean;
  word: string;

begin
  insert(' ', str, 1);
  str := str + ' ';
  CountWords:= NumOfWordsAndNum(str);
  setLength(result, CountWords);
  startFlag := False;
  endFlag := False;
  wordNow := 0;
  for var i := 1 to length(str) - 1 do
  begin
    if ((not engLettersAndNum.contains(str[i])) and engLettersAndNum.contains(str[i+1])) then
    begin
      startPos := i + 1;
      startFlag := True;
    end;
    if (engLettersAndNum.contains(str[i]) and (not engLettersAndNum.contains(str[i+1]))) then
    begin
      endPos := i;
      endFlag := True;
    end;
    if (startFlag and endFlag) then
    begin
      word:= copy(str, startPos, endPos - startPos + 1);
      result[wordNow] := word;
      wordNow := wordNow + 1;
      startFlag := False;
      endFlag := False;
    end;
  end;
end;

end.