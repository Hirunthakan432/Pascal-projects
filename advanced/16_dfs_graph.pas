program DFSGraph;
{ Depth-first search on an undirected graph (adjacency matrix) }
const
  MAX = 20;
var
  adj: array[1..MAX, 1..MAX] of integer;
  visited: array[1..MAX] of boolean;
  n, i, j, start: integer;

procedure DFS(v: integer);
var
  u: integer;
begin
  visited[v] := true;
  write(v, ' ');
  for u := 1 to n do
    if (adj[v, u] = 1) and (not visited[u]) then
      DFS(u);
end;

begin
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
  write('DFS order: ');
  DFS(start);
  writeln;
end.
