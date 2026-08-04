program MeanOnly;
uses Statistics;
var data: TRealArray; n, i: integer;
begin
  n := 5;
  for i := 1 to n do data[i] := i * 2.5;
  writeln('Mean = ', Mean(data, n):0:3);
end.
