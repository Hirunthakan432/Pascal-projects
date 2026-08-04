program DayOfYearTable;
uses DateUtils;
var m: integer;
begin
  writeln('Day-of-year for the 1st of each month in 2024:');
  for m := 1 to 12 do
    writeln('Month ', m:2, ' -> day ', DayOfYear(1, m, 2024));
end.
