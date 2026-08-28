program AverageArray;
const MaxN = 100;
var a: array[1..MaxN] of real; n,i: integer; sum: real;
begin
  write('Number of values: '); readln(n); sum := 0;
  for i := 1 to n do begin readln(a[i]); sum := sum + a[i]; end;
  writeln('Average = ', sum/n:0:2);
end.
