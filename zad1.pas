program zad1;

var
  f: text;
  i, x: integer;

begin
  assign(f, 'numbers.txt');
  rewrite(f);
  for i := 1 to 10 do
    writeln(f, i);
  close(f);

  assign(f, 'numbers.txt');
  reset(f);
  while not eof(f) do
  begin
    readln(f, x);
    writeln(x);
  end;
  close(f);
end.