program ComplexAddSub;
uses ComplexNumbers;
var a, b, c: TComplex;
begin
  a.re := 4; a.im := 3;
  b.re := 2; b.im := -1;
  c := CAdd(a, b);
  write('a + b = '); CPrint(c); writeln;
  c := CSub(a, b);
  write('a - b = '); CPrint(c); writeln;
end.
