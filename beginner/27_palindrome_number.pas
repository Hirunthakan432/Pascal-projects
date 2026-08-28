program PalindromeNumber;
var n, original, reversed, digit: longint;
begin
  write('Enter a positive integer: '); readln(n);
  original := n; reversed := 0;
  while n > 0 do
  begin
    digit := n mod 10;
    reversed := reversed * 10 + digit;
    n := n div 10;
  end;
  if original = reversed then writeln('Palindrome')
  else writeln('Not a palindrome');
end.
