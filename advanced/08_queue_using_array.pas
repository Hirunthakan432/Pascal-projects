program ArrayQueue;
{ Simple circular queue using an array }
const
  MAX = 10;

var
  q: array[0..MAX-1] of integer;
  front, rear, count: integer;

procedure Init;
begin
  front := 0;
  rear := -1;
  count := 0;
end;

function IsEmpty: boolean;
begin
  IsEmpty := count = 0;
end;

function IsFull: boolean;
begin
  IsFull := count = MAX;
end;

procedure Enqueue(value: integer);
begin
  if IsFull then
    writeln('Queue is full')
  else
  begin
    rear := (rear + 1) mod MAX;
    q[rear] := value;
    count := count + 1;
  end;
end;

function Dequeue: integer;
begin
  if IsEmpty then
  begin
    writeln('Queue is empty');
    Dequeue := -1;
  end
  else
  begin
    Dequeue := q[front];
    front := (front + 1) mod MAX;
    count := count - 1;
  end;
end;

procedure Display;
var
  i, idx: integer;
begin
  if IsEmpty then
    writeln('Queue is empty')
  else
  begin
    write('Queue: ');
    idx := front;
    for i := 1 to count do
    begin
      write(q[idx], ' ');
      idx := (idx + 1) mod MAX;
    end;
    writeln;
  end;
end;

var
  choice, val: integer;
begin
  Init;
  repeat
    writeln;
    writeln('1.Enqueue  2.Dequeue  3.Display  4.Exit');
    write('Choice: ');
    readln(choice);
    case choice of
      1: begin
           write('Value: ');
           readln(val);
           Enqueue(val);
         end;
      2: begin
           val := Dequeue;
           if val <> -1 then
             writeln('Dequeued: ', val);
         end;
      3: Display;
    end;
  until choice = 4;
end.
