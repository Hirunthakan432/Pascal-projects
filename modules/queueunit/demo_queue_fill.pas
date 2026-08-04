program QueueFill;
uses QueueUnit;
var i: integer;
begin
  InitQueue;
  for i := 1 to 5 do Enqueue(i * 10);
  ShowQueue;
  while not IsEmpty do
    writeln('Dequeue -> ', Dequeue);
end.
