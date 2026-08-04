program CircularWrap;
{ Demonstrate circular behaviour }
uses QueueUnit;
var i: integer;
begin
  InitQueue;
  for i := 1 to 5 do Enqueue(i);
  writeln('After 5 enqueues:'); ShowQueue;
  writeln('Dequeue ', Dequeue, ' and ', Dequeue);
  Enqueue(6); Enqueue(7);
  writeln('After wrap-around enqueues:'); ShowQueue;
end.
