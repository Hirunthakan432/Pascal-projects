program LargestOfThree;
var
  a, b, c, largest: integer;
begin
  write('Enter three integers: ');
  readln(a, b, c);
  largest := a;
  if b > largest then largest := b;
  if c > largest then largest := c;
  writeln('Largest is ', largest);
end.
