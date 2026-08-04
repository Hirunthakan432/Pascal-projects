program CompareSets;
uses Statistics;
var a, b: TRealArray; na, nb: integer;
begin
  na := 4; a[1] := 10; a[2] := 12; a[3] := 14; a[4] := 16;
  nb := 4; b[1] := 8;  b[2] := 11; b[3] := 15; b[4] := 20;
  writeln('Set A mean = ', Mean(a, na):0:2, '  std = ', StdDev(a, na):0:2);
  writeln('Set B mean = ', Mean(b, nb):0:2, '  std = ', StdDev(b, nb):0:2);
end.
