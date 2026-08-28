program QueueDemo;
const MaxN=20;
type Queue=record data: array[1..MaxN] of integer; front,rear: integer; end;
var q: Queue; i,x: integer;
procedure Enqueue(var qu: Queue; value: integer); begin if qu.rear<MaxN then begin inc(qu.rear); qu.data[qu.rear]:=value; end; end;
function Dequeue(var qu: Queue): integer; begin if qu.front<=qu.rear then begin Dequeue:=qu.data[qu.front]; inc(qu.front); end else Dequeue:=-1; end;
begin
  q.front:=1; q.rear:=0;
  for i:=1 to 5 do Enqueue(q,i*10);
  while q.front<=q.rear do begin x:=Dequeue(q); writeln('Dequeue: ',x); end;
end.
