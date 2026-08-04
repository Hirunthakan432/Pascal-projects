unit ModeUnit;
{ Simple mode for small integer-like real data }
interface
uses Statistics;
function ModeValue(var a: TRealArray; n: integer): real;
implementation
function ModeValue(var a: TRealArray; n: integer): real;
var i, j, count, maxCount: integer; mode: real;
begin
  maxCount := 0; mode := a[1];
  for i := 1 to n do
  begin
    count := 0;
    for j := 1 to n do if a[j] = a[i] then Inc(count);
    if count > maxCount then begin maxCount := count; mode := a[i]; end;
  end;
  ModeValue := mode;
end;
end.
