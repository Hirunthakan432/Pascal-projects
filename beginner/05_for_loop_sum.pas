program ForLoopSum;
var
  n, i, sum: integer;
begin
  write('Enter a positive integer n: ');
  readln(n);
  sum := 0;
  for i := 1 to n do
    sum := sum + i;
  writeln('Sum of numbers from 1 to ', n, ' is ', sum);
end.
