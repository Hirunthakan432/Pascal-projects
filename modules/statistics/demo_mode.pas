program DemoMode;
uses Statistics, ModeUnit;
var data: TRealArray; n: integer;
begin
  n := 7;
  data[1] := 1; data[2] := 2; data[3] := 2; data[4] := 3;
  data[5] := 3; data[6] := 3; data[7] := 4;
  writeln('Mode = ', ModeValue(data, n):0:0);
end.
