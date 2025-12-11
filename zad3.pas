program zad3;

var
  f: Text;
  S: string;

begin
  Write('Введите строку: ');
  Readln(S);

  Assign(f, 'text.txt');

  Append(f);
  Writeln(f, S);
  Close(f);

  Writeln;
  Writeln('Содержимое файла:');

  Reset(f);
  while not Eof(f) do
  begin
    Readln(f, S);
    Writeln(S);
  end;

  Close(f);
  Readln;
end.
