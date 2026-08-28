program TemperatureConverter;
var c, f: real;
begin
  write('Enter Celsius: '); readln(c);
  f := c * 9 / 5 + 32;
  writeln('Fahrenheit = ', f:0:2);
end.
