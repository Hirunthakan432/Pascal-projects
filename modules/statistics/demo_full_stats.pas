program FullStats;
uses Statistics;
var data: TRealArray; n: integer;
begin
  n := 6;
  data[1] := 10; data[2] := 12; data[3] := 23;
  data[4] := 23; data[5] := 16; data[6] := 23;
  writeln('Mean     = ', Mean(data, n):0:3);
  writeln('Variance = ', Variance(data, n):0:3);
  writeln('StdDev   = ', StdDev(data, n):0:3);
  writeln('Median   = ', Median(data, n):0:3);
end.
