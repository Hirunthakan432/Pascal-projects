program PositiveNegativeZero;
var
  n: integer;
begin
  write('Enter an integer: ');
  readln(n);
  if n > 0 then
    writeln('Positive')
  else if n < 0 then
    writeln('Negative')
  else
    writeln('Zero');
end.
