program StudentRecords;

type
  Student = record
    name: string[50];
    roll: integer;
    marks: real;
  end;

var
  students: array[1..50] of Student;
  n, i: integer;
  total: real;
begin
  write('Number of students: ');
  readln(n);

  for i := 1 to n do
  begin
    writeln('Student ', i, ':');
    write('  Name: ');
    readln(students[i].name);
    write('  Roll number: ');
    readln(students[i].roll);
    write('  Marks: ');
    readln(students[i].marks);
  end;

  writeln;
  writeln('--- Student List ---');
  total := 0;
  for i := 1 to n do
  begin
    writeln(students[i].roll:5, '  ', students[i].name:20, '  ', students[i].marks:6:2);
    total := total + students[i].marks;
  end;
  writeln('Average marks: ', total / n:0:2);
end.
