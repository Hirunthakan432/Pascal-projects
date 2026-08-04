program FactorialTable;
uses MathUtils;
var i: integer;
begin
  writeln('Factorials 0..10:');
  for i := 0 to 10 do
    writeln(i, '! = ', Factorial(i));
end.
