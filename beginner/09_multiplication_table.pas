program MultiplicationTable;
{ Nested for-loops: print a multiplication table }
var
  n, i, j: integer;
begin
  write('Enter table size (e.g. 10): ');
  readln(n);

  writeln;
  write('    ');
  for j := 1 to n do
    write(j:4);
  writeln;
  writeln('----' + StringOfChar('-', n * 4));

  for i := 1 to n do
  begin
    write(i:3, ' |');
    for j := 1 to n do
      write(i * j:4);
    writeln;
  end;
end.
