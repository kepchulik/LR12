program zad6;

var
  f, temp: Text;
  S: string;

begin
  Assign(f, 'text.txt');
  Reset(f);

  Assign(temp, 'temp.txt');
  Rewrite(temp);

  while not Eof(f) do
  begin
    Readln(f, S);
    if S <> '' then
      Writeln(temp, S);
  end;

  Close(f);
  Close(temp);

  { заменяем исходный файл }
  Erase(f);
  Rename(temp, 'text.txt');

  { вывод результата }
  Writeln('Файл без пустых строк:');
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
