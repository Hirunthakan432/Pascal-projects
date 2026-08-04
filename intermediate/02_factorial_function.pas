program FactorialFunction;

function Factorial(n: integer): longint;
var
  i: integer;
  result: longint;
begin
  result := 1;
  for i := 2 to n do
    result := result * i;
  Factorial := result;
end;

var
  num: integer;
begin
  write('Enter a non-negative integer: ');
  readln(num);
  if num < 0 then
    writeln('Factorial is not defined for negative numbers.')
  else
    writeln(num, '! = ', Factorial(num));
end.
