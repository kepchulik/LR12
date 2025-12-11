program text7;

var
  fin, fout: Text;
  n, sum, p4: Int64;
  p: LongInt;

function IsPrime(x: LongInt): Boolean;
var
  i: LongInt;
begin
  if x < 2 then
  begin
    IsPrime := False;
    Exit;
  end;

  i := 2;
  while i * i <= x do
  begin
    if x mod i = 0 then
    begin
      IsPrime := False;
      Exit;
    end;
    Inc(i);
  end;

  IsPrime := True;
end;

begin
  { ввод из файла }
  Assign(fin, 'z3.txt');
  Reset(fin);
  Readln(fin, n);
  Close(fin);

  Writeln('Введено n = ', n);

  sum := 0;
  p := 2;

  { перебор p^4 }
  while True do
  begin
    p4 := Int64(p) * p * p * p;
    if p4 > n then
      Break;

    if IsPrime(p) then
      sum := sum + p4;

    Inc(p);
  end;

  { вывод в файл }
  Assign(fout, 'z3o.txt');
  Rewrite(fout);
  Writeln(fout, sum);
  Close(fout);

  { вывод в консоль }
  Writeln('Результат: ', sum);

  Readln;
end.
