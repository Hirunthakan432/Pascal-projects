program PowerTable;
uses MathUtils;
var i: integer;
begin
  writeln('Powers of 2:');
  for i := 0 to 10 do
    writeln('2^', i, ' = ', Power(2, i):0:0);
end.
