unit DequeUnit;
{ Simple double-ended queue using array }
interface
procedure InitDeque;
procedure PushFront(v: integer);
procedure PushBack(v: integer);
function PopFront: integer;
function PopBack: integer;
procedure ShowDeque;
implementation
const MAX = 40;
var d: array[0..MAX-1] of integer; front, rear, cnt: integer;
procedure InitDeque; begin front := 0; rear := -1; cnt := 0; end;
procedure PushBack(v: integer);
begin if cnt = MAX then exit; rear := (rear+1) mod MAX; d[rear] := v; Inc(cnt); end;
procedure PushFront(v: integer);
begin if cnt = MAX then exit; front := (front - 1 + MAX) mod MAX; d[front] := v; Inc(cnt);
  if cnt = 1 then rear := front; end;
function PopFront: integer;
begin if cnt = 0 then PopFront := -1
  else begin PopFront := d[front]; front := (front+1) mod MAX; Dec(cnt); end; end;
function PopBack: integer;
begin if cnt = 0 then PopBack := -1
  else begin PopBack := d[rear]; rear := (rear - 1 + MAX) mod MAX; Dec(cnt); end; end;
procedure ShowDeque;
var i, idx: integer;
begin write('Deque: '); idx := front;
  for i := 1 to cnt do begin write(d[idx],' '); idx := (idx+1) mod MAX; end; writeln; end;
end.
