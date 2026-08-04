program MazeSolver;
{ Mini-project: Solve a maze using recursive backtracking }
const
  ROWS = 8;
  COLS = 8;
var
  maze: array[1..ROWS, 1..COLS] of integer;
  path: array[1..ROWS, 1..COLS] of integer;
  i, j: integer;
  solved: boolean;

function Solve(r, c: integer): boolean;
begin
  if (r < 1) or (r > ROWS) or (c < 1) or (c > COLS) then
  begin
    Solve := false;
    exit;
  end;
  if (maze[r, c] = 1) or (path[r, c] = 1) then
  begin
    Solve := false;
    exit;
  end;
  path[r, c] := 1;
  if (r = ROWS) and (c = COLS) then
  begin
    Solve := true;
    exit;
  end;
  if Solve(r + 1, c) or Solve(r, c + 1) or Solve(r - 1, c) or Solve(r, c - 1) then
  begin
    Solve := true;
    exit;
  end;
  path[r, c] := 0;
  Solve := false;
end;

begin
  for i := 1 to ROWS do
    for j := 1 to COLS do
    begin
      maze[i, j] := 0;
      path[i, j] := 0;
    end;

  maze[1, 3] := 1; maze[2, 3] := 1; maze[3, 3] := 1;
  maze[3, 5] := 1; maze[4, 5] := 1; maze[5, 5] := 1;
  maze[5, 2] := 1; maze[6, 2] := 1; maze[7, 6] := 1;
  maze[6, 6] := 1; maze[6, 7] := 1;

  writeln('=== Maze Solver (8x8) ===');
  writeln('0 = open, 1 = wall');
  writeln('Start (1,1) -> End (8,8)');
  writeln;
  writeln('Maze:');
  for i := 1 to ROWS do
  begin
    for j := 1 to COLS do
      write(maze[i, j], ' ');
    writeln;
  end;

  solved := Solve(1, 1);
  writeln;
  if solved then
  begin
    writeln('Path found (1 = path):');
    for i := 1 to ROWS do
    begin
      for j := 1 to COLS do
        write(path[i, j], ' ');
      writeln;
    end;
  end
  else
    writeln('No path exists.');
end.
