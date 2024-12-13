﻿unit UnitBasic;

interface
uses
  System.SysUtils;

procedure LowerRus(var s1: String);
function G1check(s1, s2: String):Boolean;
function G2check(s1, s2_c: String):Boolean;
function G3check(s1, s2_c: String):Boolean;
function G4check(s1, s2_c: String):Boolean;
function G5check(s1, s2_c: String):Boolean;


implementation

type SArr = array of string;

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
      result[wordNow] := word;
      wordNow := wordNow + 1;
      startFlag := False;
      endFlag := False;
    end;
  end;
end;


procedure LowerRus(var s1: String);
var
  len, i: Integer;
begin
  len := Length(s1);
  for i := 1 to len do
    begin
      if (s1[i] >= '�') and (s1[i] <= '�') then
        s1[i] := Chr(Ord(s1[i])+32)
    end;
end;

function G1check(s1, s2: String):Boolean;
var
  len, i: Integer;
begin
  Result := True;

  len := Length(s1);
  if len = Length(s2) then

    for i := 1 to len do
    begin
      if s1[i] <> s2[len - i + 1] then
        Result := False
    end

  else
    Result := False;
end;

function G2check(s1, s2_c: String):Boolean;
var
  len, len_as, i, j, tempResult: Integer;
  sameString: Boolean;
  as1, as2: SArr;
  s2: String;
begin
  Result := True;

  // �������� ������ �������� ����� ����
  s2 := '';
  len := Length(s2_c);
  j := 0;
  for i := 1 to len do
    if s2_c[i] = ' ' then
    begin
      if j = 0 then
        s2 := s2 + s2_c[i];
      Inc(j);
    end
    else
    begin
      s2 := s2 + s2_c[i];
      j := 0;
    end;


  as1 := ListOfWords(s1);
  as2 := ListOfWords(s2);
  len_as := Length(as1);


  tempResult := 0;

  if len_as = Length(as2) then
  begin

    for i := 0 to len_as - 1 do
    begin
      sameString := False;

      for j := 0 to len_as - 1 do
        // sameString ��� ����, ���� ���� ���� 2 ��� > ����������� ����,
        // �� ��� ������ �� ��� ��������
        if (as1[i] = as2[j]) and (not sameString) then
        begin
          Inc(tempResult);
          sameString := True;
        end;

    end;

    if tempResult < len_as then
      Result := False

  end

  else
    Result := False;
end;

function G3check(s1, s2_c: String):Boolean;
var
  len, len_as, i, j, tempResult: Integer;
  sameString: Boolean;
  as1, as2: SArr;
  s2: String;
begin
  Result := True;

  // �������� ������ �������� ����� ����
  s2 := '';
  len := Length(s2_c);
  j := 0;
  for i := 1 to len do
    if s2_c[i] = ' ' then
    begin
      if j = 0 then
        s2 := s2 + s2_c[i];
      Inc(j);
    end
    else
    begin
      s2 := s2 + s2_c[i];
      j := 0;
    end;

  if s1 <> s2 then
    Result := False;

end;

function G4check(s1, s2_c: String):Boolean;
var
  len, len_as, i, j, tempResult: Integer;
  sameString: Boolean;
  as1, as2: SArr;
  s2: String;
begin
  Result := True;

  // �������� ������ �������� ����� ����
  s2 := '';
  len := Length(s2_c);
  j := 0;
  for i := 1 to len do
    if s2_c[i] = ' ' then
    begin
      if j = 0 then
        s2 := s2 + s2_c[i];
      Inc(j);
    end
    else
    begin
      s2 := s2 + s2_c[i];
      j := 0;
    end;

  as1 := ListOfWords(s1);
  as2 := ListOfWords(s2);
  len_as := Length(as1);


  tempResult := 0;

  if len_as = Length(as2) then
  begin

    for i := 0 to len_as - 1 do
    begin
      sameString := False;

      for j := 0 to len_as - 1 do
        // sameString ��� ����, ���� ���� ���� 2 ��� > ����������� ����,
        // �� ��� ������ �� ��� ��������
        if (G1check(as1[i], as2[j])) and (not sameString) then
        begin
          Inc(tempResult);
          sameString := True;
        end;

    end;

    if tempResult < len_as then
      Result := False

  end

  else
    Result := False;
end;

function G5check(s1, s2_c: String):Boolean;
var
  len, len_as, i, j, tempResult: Integer;
  as1, as2: SArr;
  s2: String;
begin
  Result := True;

  // �������� ������ �������� ����� ����
  s2 := '';
  len := Length(s2_c);
  j := 0;
  for i := 1 to len do
    if s2_c[i] = ' ' then
    begin
      if j = 0 then
        s2 := s2 + s2_c[i];
      Inc(j);
    end
    else
    begin
      s2 := s2 + s2_c[i];
      j := 0;
    end;

  as1 := ListOfWords(s1);
  as2 := ListOfWords(s2);
  len_as := Length(as1);


  tempResult := 0;

  if len_as = Length(as2) then
  begin

    for i := 0 to len_as - 1 do
    begin
      if G1check(as1[i], as2[i]) then
      begin
        Inc(tempResult);
      end;

    end;

    if tempResult < len_as then
      Result := False

  end

  else
    Result := False;
end;


end.
