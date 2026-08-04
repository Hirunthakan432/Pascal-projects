program BFSGraph;
{ Breadth-first search using a simple queue }
const
  MAX = 20;
var
  adj: array[1..MAX, 1..MAX] of integer;
  visited: array[1..MAX] of boolean;
  q: array[1..MAX] of integer;
  front, rear, n, i, j, start, v, u: integer;

procedure Enqueue(x: integer);
begin
  Inc(rear);
  q[rear] := x;
end;

function Dequeue: integer;
begin
  Inc(front);
  Dequeue := q[front];
end;

function IsEmpty: boolean;
begin
  IsEmpty := front >= rear;
end;

begin
  front := 0; rear := 0;
  write('Number of vertices: ');
  readln(n);
  writeln('Enter adjacency matrix (', n, 'x', n, '):');
  for i := 1 to n do
    for j := 1 to n do
      read(adj[i, j]);
  for i := 1 to n do
    visited[i] := false;
  write('Start vertex: ');
  readln(start);
  write('BFS order: ');
  Enqueue(start);
  visited[start] := true;
  while not IsEmpty do
  begin
    v := Dequeue;
    write(v, ' ');
    for u := 1 to n do
      if (adj[v, u] = 1) and (not visited[u]) then
      begin
        Enqueue(u);
        visited[u] := true;
      end;
  end;
  writeln;
end.
