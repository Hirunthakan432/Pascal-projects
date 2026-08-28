program Factorial;

var
  n, i: integer;
  fact: longint;

begin
  write('Enter a positive integer: ');
  readln(n);

  fact := 1;
  for i := 1 to n do
    fact := fact * i;

  writeln('Factorial = ', fact);
end.
