program StackSum;
uses StackUnit;
var i, sum, v: integer;
begin
  InitStack;
  for i := 1 to 5 do Push(i * 10);
  sum := 0;
  while not IsEmpty do
  begin
    v := Pop;
    sum := sum + v;
  end;
  writeln('Sum of pushed values = ', sum);
end.
