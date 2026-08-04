program SingleMultiplicationTable;
var
  n, i: integer;
begin
  write('Enter a number: ');
  readln(n);
  for i := 1 to 10 do
    writeln(n, ' x ', i, ' = ', n * i);
end.
