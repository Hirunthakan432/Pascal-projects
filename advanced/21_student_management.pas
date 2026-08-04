program StudentManagement;
{ Mini-project: Student records with file persistence }
const
  MAX = 100;
  DATAFILE = 'students.dat';
type
  TStudent = record
    id: integer;
    name: string[40];
    marks: real;
  end;
var
  students: array[1..MAX] of TStudent;
  count, choice, i, id: integer;
  f: file of TStudent;

procedure LoadData;
begin
  count := 0;
  assign(f, DATAFILE);
  {$I-} reset(f); {$I+}
  if IOResult = 0 then
  begin
    while not eof(f) and (count < MAX) do
    begin
      Inc(count);
      read(f, students[count]);
    end;
    close(f);
  end;
end;

procedure SaveData;
var
  j: integer;
begin
  assign(f, DATAFILE);
  rewrite(f);
  for j := 1 to count do
    write(f, students[j]);
  close(f);
end;

begin
  LoadData;
  repeat
    writeln;
    writeln('=== Student Management System ===');
    writeln('1. Add student');
    writeln('2. List students');
    writeln('3. Search by ID');
    writeln('4. Save & Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: if count < MAX then
         begin
           Inc(count);
           write('ID   : ');
           readln(students[count].id);
           write('Name : ');
           readln(students[count].name);
           write('Marks: ');
           readln(students[count].marks);
           writeln('Added.');
         end
         else
           writeln('Database full.');
      2: for i := 1 to count do
           writeln(students[i].id:6, '  ', students[i].name:20, '  ', students[i].marks:6:2);
      3: begin
           write('ID to search: ');
           readln(id);
           for i := 1 to count do
             if students[i].id = id then
             begin
               writeln(students[i].name, ' - ', students[i].marks:0:2);
               break;
             end;
         end;
      4: begin
           SaveData;
           writeln('Data saved. Goodbye.');
         end;
    end;
  until choice = 4;
end.
