program DaysInMonthDemo;
uses DateUtils;
var m, y: integer;
begin
  write('Enter month and year: ');
  readln(m, y);
  writeln('Days in month: ', DaysInMonth(m, y));
end.
