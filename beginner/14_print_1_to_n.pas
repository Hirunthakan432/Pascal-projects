program Print1ToN;
var
  n, i: integer;
begin
  write('Enter n: ');
  readln(n);
  for i := 1 to n do
    write(i, ' ');
  writeln;
end.
