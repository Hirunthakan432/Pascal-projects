program StudentRecord;
type
  Student = record
    name: string;
    mark: integer;
  end;
var s: Student;
begin
  write('Student name: '); readln(s.name);
  write('Mark: '); readln(s.mark);
  writeln('Name: ', s.name);
  writeln('Mark: ', s.mark);
end.
