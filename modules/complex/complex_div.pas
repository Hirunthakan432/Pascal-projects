unit ComplexDiv;
interface
uses ComplexNumbers;
function CDiv(a, b: TComplex): TComplex;
implementation
function CDiv(a, b: TComplex): TComplex;
var den: real;
begin
  den := b.re * b.re + b.im * b.im;
  if den = 0 then begin CDiv.re := 0; CDiv.im := 0; end
  else begin
    CDiv.re := (a.re * b.re + a.im * b.im) / den;
    CDiv.im := (a.im * b.re - a.re * b.im) / den;
  end;
end;
end.
