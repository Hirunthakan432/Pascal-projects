program TodoList;
{ Mini-project: Console to-do list }
const
  MAX = 30;
var
  tasks: array[1..MAX] of string;
  done: array[1..MAX] of boolean;
  count, choice, i, num: integer;
  task: string;
begin
  count := 0;
  repeat
    writeln;
    writeln('=== To-Do List ===');
    writeln('1. Add task');
    writeln('2. Show tasks');
    writeln('3. Mark task done');
    writeln('4. Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: if count < MAX then
         begin
           write('Task: ');
           readln(task);
           Inc(count);
           tasks[count] := task;
           done[count] := false;
           writeln('Added.');
         end
         else
           writeln('List full.');
      2: if count = 0 then
           writeln('No tasks.')
         else
           for i := 1 to count do
             if done[i] then
               writeln(i, '. [X] ', tasks[i])
             else
               writeln(i, '. [ ] ', tasks[i]);
      3: begin
           write('Task number: ');
           readln(num);
           if (num >= 1) and (num <= count) then
           begin
             done[num] := true;
             writeln('Marked done.');
           end
           else
             writeln('Invalid number.');
         end;
    end;
  until choice = 4;
end.
