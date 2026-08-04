program GradeCalculator;
{ Mini-project: Calculate average and letter grade for a student }
var
  name: string;
  m1, m2, m3, m4, m5, avg: real;
  grade: char;
begin
  writeln('=== Student Grade Calculator ===');
  write('Student name: ');
  readln(name);
  write('Mark 1: ');
  readln(m1);
  write('Mark 2: ');
  readln(m2);
  write('Mark 3: ');
  readln(m3);
  write('Mark 4: ');
  readln(m4);
  write('Mark 5: ');
  readln(m5);

  avg := (m1 + m2 + m3 + m4 + m5) / 5;

  if avg >= 90 then grade := 'A'
  else if avg >= 80 then grade := 'B'
  else if avg >= 70 then grade := 'C'
  else if avg >= 60 then grade := 'D'
  else grade := 'F';

  writeln;
  writeln('Student : ', name);
  writeln('Average : ', avg:0:2);
  writeln('Grade   : ', grade);
end.
