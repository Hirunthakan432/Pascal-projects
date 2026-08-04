program DemoStatistics;

uses
  Statistics;

var
  data: TRealArray;
  n, i: integer;
begin
  n := 7;
  data[1] := 12.5;
  data[2] := 18.0;
  data[3] := 9.5;
  data[4] := 22.0;
  data[5] := 15.5;
  data[6] := 11.0;
  data[7] := 19.5;

  write('Data: ');
  for i := 1 to n do
    write(data[i]:0:1, ' ');
  writeln;

  writeln('Mean     = ', Mean(data, n):0:3);
  writeln('Variance = ', Variance(data, n):0:3);
  writeln('StdDev   = ', StdDev(data, n):0:3);
  writeln('Median   = ', Median(data, n):0:3);
end.
