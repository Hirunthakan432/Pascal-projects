program GcdEuclidean;
var
  a, b, t: longint;
begin
  write('Enter two positive integers: ');
  readln(a, b);
  while b <> 0 do
  begin
    t := b;
    b := a mod b;
    a := t;
  end;
  writeln('GCD = ', a);
end.
