program GCDEuclid;

function GCD(a, b: longint): longint;
var t: longint;
begin
  while b <> 0 do
  begin
    t := a mod b;
    a := b;
    b := t;
  end;
  GCD := a;
end;

var a, b: longint;
begin
  write('Enter two integers: ');
  readln(a, b);
  writeln('GCD = ', GCD(a, b));
end.
