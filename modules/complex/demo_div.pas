program DemoComplexDiv;
uses ComplexNumbers, ComplexDiv;
var a, b, c: TComplex;
begin
  a.re := 4; a.im := 2;
  b.re := 1; b.im := 1;
  c := CDiv(a, b);
  write('(4+2i)/(1+i) = '); CPrint(c); writeln;
end.
