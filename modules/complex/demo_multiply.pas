program ComplexMultiply;
uses ComplexNumbers;
var a, b, c: TComplex;
begin
  a.re := 1; a.im := 2;
  b.re := 3; b.im := 4;
  c := CMul(a, b);
  write('(1+2i)*(3+4i) = '); CPrint(c); writeln;
end.
