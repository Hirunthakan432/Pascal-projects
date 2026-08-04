program QueueAverage;
uses QueueUnit;
var i, sum, v, c: integer;
begin
  InitQueue;
  for i := 1 to 6 do Enqueue(i * 5);
  sum := 0; c := 0;
  while not IsEmpty do begin v := Dequeue; sum := sum + v; Inc(c); end;
  writeln('Average of queued values = ', sum / c:0:2);
end.
