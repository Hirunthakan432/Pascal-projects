program ReverseNumber;
var
  n, rev, digit: integer;
begin
  write('Enter a positive integer: ');
  readln(n);
  rev := 0;
  while n > 0 do
  begin
    digit := n mod 10;
    rev := rev * 10 + digit;
    n := n div 10;
  end;
  writeln('Reversed = ', rev);
end.
