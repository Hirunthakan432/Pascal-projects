program CompoundCalc;
{ (a+b)^n using MathUtils }
uses MathUtils;
var a, b, n: integer;
begin
  a := 2; b := 3; n := 4;
  writeln('(', a, '+', b, ')^', n, ' = ', Power(Add(a, b), n):0:0);
end.
