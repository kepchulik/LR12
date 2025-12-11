program zad2;

var
  f: Text;
  N, K: Integer;
  i, j: Integer;

begin
  Readln(N, K);

  Assign(f, 'stars.txt');
  Rewrite(f);

  for i := 1 to N do
  begin
    for j := 1 to K do
    begin
      Write(f, '*');
      Write('*');
    end;
    Writeln(f);
    Writeln;
  end;

  Close(f);

end.