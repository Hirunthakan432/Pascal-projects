unit PriorityQueueSimple;
{ Very simple sorted insertion priority queue (higher value = higher priority) }
interface
procedure InitPQ;
procedure EnqueuePQ(v: integer);
function DequeuePQ: integer;
procedure ShowPQ;
implementation
const MAX = 30;
var q: array[1..MAX] of integer; n: integer;
procedure InitPQ; begin n := 0; end;
procedure EnqueuePQ(v: integer);
var i: integer;
begin
  if n = MAX then exit;
  i := n;
  while (i >= 1) and (q[i] < v) do begin q[i+1] := q[i]; Dec(i); end;
  q[i+1] := v; Inc(n);
end;
function DequeuePQ: integer;
begin
  if n = 0 then DequeuePQ := -1
  else begin DequeuePQ := q[1];
    for i := 1 to n-1 do q[i] := q[i+1]; Dec(n); end;
end;
procedure ShowPQ;
var i: integer;
begin write('PQ: '); for i := 1 to n do write(q[i],' '); writeln; end;
end.
