program LeapYears;
uses DateUtils;
var y: integer;
begin
  writeln('Leap years from 2000 to 2030:');
  for y := 2000 to 2030 do
    if IsLeapYear(y) then write(y, ' ');
  writeln;
end.
