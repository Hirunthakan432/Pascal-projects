program FibonacciIterative;
var
  n, i: integer;
  a, b, c: longint;
begin
  write('How many terms? ');
  readln(n);
  a := 0; b := 1;
  write('Fibonacci: ');
  for i := 1 to n do
  begin
    write(a, ' ');
    c := a + b;
    a := b;
    b := c;
  end;
  writeln;
end.
