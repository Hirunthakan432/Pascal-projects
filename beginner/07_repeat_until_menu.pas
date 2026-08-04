program SimpleMenu;
{ Demonstrates repeat-until loop and a basic menu }
var
  choice: integer;
begin
  repeat
    writeln;
    writeln('===== Simple Menu =====');
    writeln('1. Say Hello');
    writeln('2. Show current year');
    writeln('3. Exit');
    write('Choose an option: ');
    readln(choice);

    case choice of
      1: writeln('Hello, Pascal learner!');
      2: writeln('Current year example: 2026');
      3: writeln('Goodbye!');
    else
      writeln('Invalid choice, try again.');
    end;
  until choice = 3;
end.
