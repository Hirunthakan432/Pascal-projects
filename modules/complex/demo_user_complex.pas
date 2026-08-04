program UserComplex;
uses ComplexNumbers;
var a, b, c: TComplex;
begin
  write('a (re im): '); readln(a.re, a.im);
  write('b (re im): '); readln(b.re, b.im);
  c := CAdd(a, b); write('Sum  = '); CPrint(c); writeln;
  c := CMul(a, b); write('Prod = '); CPrint(c); writeln;
end.
