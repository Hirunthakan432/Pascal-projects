program BasicOps;
uses MathUtils;
var a, b: integer;
begin
  write('Enter two integers: ');
  readln(a, b);
  writeln('Sum        = ', Add(a, b));
  writeln('Difference = ', Subtract(a, b));
  writeln('Product    = ', Multiply(a, b));
  writeln('Quotient   = ', Divide(a, b):0:4);
end.
