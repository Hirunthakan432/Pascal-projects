unit ComplexConj;
interface
uses ComplexNumbers;
function Conjugate(a: TComplex): TComplex;
implementation
function Conjugate(a: TComplex): TComplex;
begin
  Conjugate.re := a.re;
  Conjugate.im := -a.im;
end;
end.
