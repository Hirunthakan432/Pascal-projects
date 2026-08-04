program DemoRange;
uses Statistics, RangeUnit;
var data: TRealArray; n: integer;
begin
  n := 5;
  data[1] := 3; data[2] := 7; data[3] := 2; data[4] := 9; data[5] := 5;
  writeln('Range = ', DataRange(data, n):0:2);
end.
