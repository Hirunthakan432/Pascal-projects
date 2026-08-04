program EuclideanGCD;
{ Greatest Common Divisor (Euclidean algorithm) and LCM }

function GCD(a, b: longint): longint;
var
  t: longint;
begin
  while b <> 0 do
  begin
    t := b;
    b := a mod b;
    a := t;
  end;
  GCD := a;
end;

function LCM(a, b: longint): longint;
begin
  LCM := (a div GCD(a, b)) * b;   { careful with overflow in real apps }
end;

var
  x, y: longint;
begin
  write('Enter two positive integers: ');
  readln(x, y);
  writeln('GCD(', x, ', ', y, ') = ', GCD(x, y));
  writeln('LCM(', x, ', ', y, ') = ', LCM(x, y));
end.
