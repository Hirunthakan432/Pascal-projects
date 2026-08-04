program DemoAge;
uses AgeCalculator;
var bd, bm, by: integer;
begin
  write('Birth date (d m y): ');
  readln(bd, bm, by);
  writeln('Age on 2026-08-04: ', AgeInYears(bd, bm, by, 4, 8, 2026), ' years');
end.
