﻿unit UnitBasic;

interface
uses
  System.SysUtils, splitGo;

function G1check(s1, s2: String):Boolean;
function G2check(s1, s2_c: String):Boolean;
function G3check(s1, s2_c: String):Boolean;
function G4check(s1, s2_c: String):Boolean;
function G5check(s1, s2_c: String):Boolean;
function G6check(s1, s2_c: String):Boolean;


implementation

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


  as1 := splitGo.ListOfWords(s1);
  as2 := splitGo.ListOfWords(s2);
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
          as2[j] := '';
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

  as1 := splitGo.ListOfWords(s1);
  as2 := splitGo.ListOfWords(s2);
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
          as2[j] := '';
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

  // stol dver -> lots revd
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

  as1 := splitGo.ListOfWords(s1);
  as2 := splitGo.ListOfWords(s2);
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

function G6check(s1, s2_c: String):Boolean;
var
  len, len_as, i, j, tempResult: Integer;
  as1, as2: SArr;
  s2: String;
begin
  Result := True;

  // Works like G5, but needs words in reverse
  // stol dver -> revd lots

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

  as1 := splitGo.ListOfWords(s1);
  as2 := splitGo.ListOfWords(s2);
  len_as := Length(as1);


  tempResult := 0;

  if len_as = Length(as2) then
  begin

    for i := 0 to len_as - 1 do
    begin
      if G1check(as1[i], as2[len_as - i - 1]) then
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
