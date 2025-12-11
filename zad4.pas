program zad4;

var
  f, temp: Text;
  S: string;
  K, lineNum: Integer;
  found: Boolean;

begin
  Write('Введите K: ');
  Readln(K);

  Assign(f, 'text.txt');
  Reset(f);

  Assign(temp, 'temp.txt');
  Rewrite(temp);

  lineNum := 1;
  found := False;

  while not Eof(f) do
  begin
    Readln(f, S);

    if lineNum = K then
    begin
      Writeln(temp);   { пустая строка }
      found := True;
    end;

    Writeln(temp, S);
    Inc(lineNum);
  end;

  Close(f);
  Close(temp);

  if found then
  begin
    Erase(f);
    Rename(temp, 'text.txt');
    Writeln('Пустая строка вставлена.');
  end
  else
  begin
    Erase(temp);
    Writeln('Строки с таким номером нет. Файл не изменён.');
  end;

  Writeln;
  Writeln('Содержимое файла:');

  Assign(f, 'text.txt');
  Reset(f);
  while not Eof(f) do
  begin
    Readln(f, S);
    Writeln(S);
  end;
  Close(f);

  Readln;
end.
