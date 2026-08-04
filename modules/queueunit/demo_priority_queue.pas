program DemoPriorityQueue;
uses PriorityQueueSimple;
begin
  InitPQ;
  EnqueuePQ(30); EnqueuePQ(10); EnqueuePQ(50); EnqueuePQ(20);
  ShowPQ;
  writeln('Dequeue (highest) = ', DequeuePQ);
  ShowPQ;
end.
