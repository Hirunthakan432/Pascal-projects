unit ReverseArray;
interface
uses ArrayUtils;
procedure Reverse(var a: TIntArray; n: integer);
implementation
procedure Reverse(var a: TIntArray; n: integer);
var i, temp: integer;
begin
  for i := 1 to n div 2 do
  begin
    temp := a[i];
    a[i] := a[n - i + 1];
    a[n - i + 1] := temp;
  end;
end;
end.
