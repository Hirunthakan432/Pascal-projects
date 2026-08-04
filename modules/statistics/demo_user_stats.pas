program UserStats;
uses Statistics;
var data: TRealArray; n, i: integer;
begin
  write('How many values? ');
  readln(n);
  for i := 1 to n do begin write('Value ', i, ': '); readln(data[i]); end;
  writeln('Mean   = ', Mean(data, n):0:4);
  writeln('StdDev = ', StdDev(data, n):0:4);
  writeln('Median = ', Median(data, n):0:4);
end.
