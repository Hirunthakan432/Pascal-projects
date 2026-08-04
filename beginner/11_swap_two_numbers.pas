program SwapTwoNumbers;
var
  a, b, temp: integer;
begin
  write('Enter two integers: ');
  readln(a, b);
  writeln('Before: a = ', a, ', b = ', b);
  temp := a;
  a := b;
  b := temp;
  writeln('After : a = ', a, ', b = ', b);
end.
