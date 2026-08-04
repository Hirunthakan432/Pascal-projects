program DemoConjugate;
uses ComplexNumbers, ComplexConj;
var a, c: TComplex;
begin
  a.re := 5; a.im := -3;
  c := Conjugate(a);
  write('z   = '); CPrint(a); writeln;
  write('z*  = '); CPrint(c); writeln;
end.
