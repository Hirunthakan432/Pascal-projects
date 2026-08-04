program QueueMenu;
uses QueueUnit;
var choice, val: integer;
begin
  InitQueue;
  repeat
    writeln; writeln('1.Enqueue 2.Dequeue 3.Show 4.Exit');
    write('Choice: '); readln(choice);
    case choice of
      1: begin write('Value: '); readln(val); Enqueue(val); end;
      2: begin val := Dequeue; if val <> -1 then writeln('Dequeued ', val); end;
      3: ShowQueue;
    end;
  until choice = 4;
end.
