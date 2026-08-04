program ComplexAbs;
uses ComplexNumbers;
var a: TComplex;
begin
  a.re := 3; a.im := 4;
  write('z = '); CPrint(a); writeln;
  writeln('|z| = ', CAbs(a):0:4);
end.
