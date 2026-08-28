program LeapYear;
var year: integer;
begin
  write('Enter year: '); readln(year);
  if ((year mod 400 = 0) or ((year mod 4 = 0) and (year mod 100 <> 0))) then
    writeln(year, ' is a leap year.')
  else writeln(year, ' is not a leap year.');
end.
