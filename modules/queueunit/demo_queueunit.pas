program DemoQueueUnit;

uses
  QueueUnit;

begin
  InitQueue;
  Enqueue(5);
  Enqueue(15);
  Enqueue(25);
  ShowQueue;
  writeln('Dequeue = ', Dequeue);
  ShowQueue;
  Enqueue(35);
  ShowQueue;
end.
