program PrimeCheck;
var
  n, i: integer;
  isPrime: boolean;
begin
  write('Enter a positive integer: ');
  readln(n);
  if n <= 1 then
    isPrime := false
  else
  begin
    isPrime := true;
    for i := 2 to Trunc(Sqrt(n)) do
      if n mod i = 0 then
      begin
        isPrime := false;
        break;
      end;
  end;
  if isPrime then
    writeln(n, ' is prime')
  else
    writeln(n, ' is not prime');
end.
