unit LinearSearchUnit;
interface
uses ArrayUtils;
function FindFirst(const a: TIntArray; n, target: integer): integer;
implementation
function FindFirst(const a: TIntArray; n, target: integer): integer;
var i: integer;
begin
  for i := 1 to n do
    if a[i] = target then begin FindFirst := i; exit; end;
  FindFirst := 0;
end;
end.
