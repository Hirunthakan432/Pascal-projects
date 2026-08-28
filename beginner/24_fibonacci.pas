program Fibonacci;

var
  n, i: integer;
  a, b, next: longint;

begin
  write('Enter number of terms: ');
  readln(n);

  a := 0;
  b := 1;

  for i := 1 to n do
  begin
    write(a, ' ');
    next := a + b;
    a := b;
    b := next;
  end;

  writeln;
end.
