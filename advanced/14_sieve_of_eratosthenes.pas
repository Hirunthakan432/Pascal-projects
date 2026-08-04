program SieveOfEratosthenes;
const
  MAX = 1000;
var
  prime: array[0..MAX] of boolean;
  n, i, j: integer;
begin
  write('Find primes up to (max ', MAX, '): ');
  readln(n);
  if n > MAX then n := MAX;
  for i := 0 to n do
    prime[i] := true;
  prime[0] := false;
  prime[1] := false;
  i := 2;
  while i * i <= n do
  begin
    if prime[i] then
    begin
      j := i * i;
      while j <= n do
      begin
        prime[j] := false;
        j := j + i;
      end;
    end;
    Inc(i);
  end;
  write('Primes: ');
  for i := 2 to n do
    if prime[i] then
      write(i, ' ');
  writeln;
end.
