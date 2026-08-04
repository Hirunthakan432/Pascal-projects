program RecursiveFibonacci;

function Fib(n: integer): longint;
begin
  if n <= 1 then
    Fib := n
  else
    Fib := Fib(n - 1) + Fib(n - 2);
end;

var
  n, i: integer;
begin
  write('Enter how many Fibonacci numbers to display: ');
  readln(n);
  writeln('Fibonacci sequence:');
  for i := 0 to n - 1 do
    write(Fib(i), ' ');
  writeln;
end.
