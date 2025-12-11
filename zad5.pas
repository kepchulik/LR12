program zad5;

var
  fin, fout: Text;
  x, mn, mx: Integer;
  first: Boolean;

begin
  Assign(fin, 'input.txt');
  Reset(fin);

  first := True;

  while not Eof(fin) do
  begin
    Readln(fin, x);
    if first then
    begin
      mn := x;
      mx := x;
      first := False;
    end
    else
    begin
      if x < mn then mn := x;
      if x > mx then mx := x;
    end;
  end;

  Close(fin);

  Writeln('Минимум: ', mn);
  Writeln('Максимум: ', mx);

  Readln;
end.
