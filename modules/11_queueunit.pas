unit QueueUnit;
{ Circular queue as a reusable unit }

interface

const
  QUEUE_MAX = 20;

procedure InitQueue;
function IsEmpty: boolean;
function IsFull: boolean;
procedure Enqueue(value: integer);
function Dequeue: integer;
procedure ShowQueue;

implementation

var
  data: array[0..QUEUE_MAX-1] of integer;
  front, rear, count: integer;

procedure InitQueue;
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
  IsFull := count = QUEUE_MAX;
end;

procedure Enqueue(value: integer);
begin
  if IsFull then
    writeln('Queue full')
  else
  begin
    rear := (rear + 1) mod QUEUE_MAX;
    data[rear] := value;
    Inc(count);
  end;
end;

function Dequeue: integer;
begin
  if IsEmpty then
  begin
    writeln('Queue empty');
    Dequeue := -1;
  end
  else
  begin
    Dequeue := data[front];
    front := (front + 1) mod QUEUE_MAX;
    Dec(count);
  end;
end;

procedure ShowQueue;
var
  i, idx: integer;
begin
  if IsEmpty then
    writeln('(empty)')
  else
  begin
    write('Queue: ');
    idx := front;
    for i := 1 to count do
    begin
      write(data[idx], ' ');
      idx := (idx + 1) mod QUEUE_MAX;
    end;
    writeln;
  end;
end;

end.
