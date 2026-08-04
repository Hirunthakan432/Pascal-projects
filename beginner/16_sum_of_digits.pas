program SumOfDigits;
var
  n, digit, sum: integer;
begin
  write('Enter a positive integer: ');
  readln(n);
  sum := 0;
  while n > 0 do
  begin
    digit := n mod 10;
    sum := sum + digit;
    n := n div 10;
  end;
  writeln('Sum of digits = ', sum);
end.
