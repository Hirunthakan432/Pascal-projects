program DemoMathUtils;
{ Demonstrates use of the MathUtils unit }

uses
  MathUtils;

var
  x, y: integer;
begin
  x := 12;
  y := 5;

  writeln('Add(', x, ', ', y, ') = ', Add(x, y));
  writeln('Subtract(', x, ', ', y, ') = ', Subtract(x, y));
  writeln('Multiply(', x, ', ', y, ') = ', Multiply(x, y));
  writeln('Divide(', x, ', ', y, ') = ', Divide(x, y):0:2);
  writeln('Power(2, 8) = ', Power(2, 8):0:0);
  writeln('Factorial(6) = ', Factorial(6));
end.
