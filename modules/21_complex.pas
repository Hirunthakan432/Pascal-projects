unit ComplexNumbers;
{ Simple complex number arithmetic }

interface

type
  TComplex = record
    re, im: real;
  end;

function CAdd(a, b: TComplex): TComplex;
function CSub(a, b: TComplex): TComplex;
function CMul(a, b: TComplex): TComplex;
function CAbs(a: TComplex): real;
procedure CPrint(const a: TComplex);

implementation

function CAdd(a, b: TComplex): TComplex;
begin
  CAdd.re := a.re + b.re;
  CAdd.im := a.im + b.im;
end;

function CSub(a, b: TComplex): TComplex;
begin
  CSub.re := a.re - b.re;
  CSub.im := a.im - b.im;
end;

function CMul(a, b: TComplex): TComplex;
begin
  CMul.re := a.re * b.re - a.im * b.im;
  CMul.im := a.re * b.im + a.im * b.re;
end;

function CAbs(a: TComplex): real;
begin
  CAbs := Sqrt(a.re * a.re + a.im * a.im);
end;

procedure CPrint(const a: TComplex);
begin
  if a.im >= 0 then
    write(a.re:0:2, ' + ', a.im:0:2, 'i')
  else
    write(a.re:0:2, ' - ', Abs(a.im):0:2, 'i');
end;

end.
