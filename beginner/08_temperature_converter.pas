program TemperatureConverter;
{ Celsius <-> Fahrenheit conversion }
var
  c, f: real;
  choice: char;
begin
  writeln('Temperature Converter');
  writeln('C = Celsius to Fahrenheit');
  writeln('F = Fahrenheit to Celsius');
  write('Choose (C/F): ');
  readln(choice);

  if (choice = 'C') or (choice = 'c') then
  begin
    write('Enter temperature in Celsius: ');
    readln(c);
    f := (c * 9 / 5) + 32;
    writeln(c:0:2, ' C = ', f:0:2, ' F');
  end
  else if (choice = 'F') or (choice = 'f') then
  begin
    write('Enter temperature in Fahrenheit: ');
    readln(f);
    c := (f - 32) * 5 / 9;
    writeln(f:0:2, ' F = ', c:0:2, ' C');
  end
  else
    writeln('Invalid choice.');
end.
