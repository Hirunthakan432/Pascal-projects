program DemoDateUtils;

uses
  DateUtils;

var
  d, m, y: integer;
begin
  write('Enter day month year: ');
  readln(d, m, y);

  if not IsValidDate(d, m, y) then
    writeln('Invalid date')
  else
  begin
    writeln('Valid date');
    if IsLeapYear(y) then
      writeln(y, ' is a leap year')
    else
      writeln(y, ' is not a leap year');
    writeln('Day of year: ', DayOfYear(d, m, y));
  end;
end.
