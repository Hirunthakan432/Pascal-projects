program DemoPrimes;
uses PrimeCheck;
var i, n: longint;
begin
  write('List primes up to: ');
  readln(n);
  for i := 2 to n do
    if IsPrime(i) then write(i, ' ');
  writeln;
end.
