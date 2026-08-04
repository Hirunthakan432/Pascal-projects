program ArrayStats;
uses ArrayUtils;
var data: TIntArray; n: integer;
begin
  n := 8;
  FillRandom(data, n, 100);
  write('Data: ');
  PrintArray(data, n);
  writeln('Sum = ', SumArray(data, n));
  writeln('Max = ', MaxValue(data, n));
  writeln('Min = ', MinValue(data, n));
  writeln('Avg = ', SumArray(data, n) / n:0:2);
end.
