program ProcedureMax;

procedure FindMax(a, b, c: integer; var result: integer);
begin
  result := a;
  if b > result then result := b;
  if c > result then result := c;
end;

var
  x, y, z, m: integer;
begin
  write('Enter three integers: ');
  readln(x, y, z);
  FindMax(x, y, z, m);
  writeln('Maximum = ', m);
end.
