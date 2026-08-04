unit RangeUnit;
interface
uses Statistics;
function DataRange(const a: TRealArray; n: integer): real;
implementation
function DataRange(const a: TRealArray; n: integer): real;
var i: integer; mn, mx: real;
begin
  mn := a[1]; mx := a[1];
  for i := 2 to n do begin if a[i] < mn then mn := a[i]; if a[i] > mx then mx := a[i]; end;
  DataRange := mx - mn;
end;
end.
