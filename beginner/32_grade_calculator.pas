program GradeCalculator;
var mark: integer;
begin
  write('Enter mark (0-100): '); readln(mark);
  if mark >= 75 then writeln('Grade: A')
  else if mark >= 65 then writeln('Grade: B')
  else if mark >= 55 then writeln('Grade: C')
  else if mark >= 35 then writeln('Grade: S')
  else writeln('Grade: W');
end.
