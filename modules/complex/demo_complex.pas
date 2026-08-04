program DemoComplex;

uses
  ComplexNumbers;

var
  a, b, c: TComplex;
begin
  a.re := 3; a.im := 2;
  b.re := 1; b.im := 4;

  write('a = '); CPrint(a); writeln;
  write('b = '); CPrint(b); writeln;

  c := CAdd(a, b);
  write('a + b = '); CPrint(c); writeln;

  c := CMul(a, b);
  write('a * b = '); CPrint(c); writeln;

  writeln('|a| = ', CAbs(a):0:4);
end.
