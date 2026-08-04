program TowerOfHanoi;

procedure Hanoi(n: integer; fromPeg, toPeg, auxPeg: char);
begin
  if n = 1 then
  begin
    writeln('Move disk 1 from ', fromPeg, ' to ', toPeg);
    exit;
  end;
  Hanoi(n - 1, fromPeg, auxPeg, toPeg);
  writeln('Move disk ', n, ' from ', fromPeg, ' to ', toPeg);
  Hanoi(n - 1, auxPeg, toPeg, fromPeg);
end;

var
  n: integer;
begin
  write('Number of disks: ');
  readln(n);
  Hanoi(n, 'A', 'C', 'B');
end.
