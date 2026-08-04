program FrequencyArray;
const
  MAX = 100;
var
  a: array[1..MAX] of integer;
  freq: array[1..MAX] of integer;
  n, i, j, count: integer;
  visited: array[1..MAX] of boolean;
begin
  write('Number of elements: ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
  begin
    readln(a[i]);
    visited[i] := false;
  end;
  writeln('Value  Frequency');
  for i := 1 to n do
  begin
    if visited[i] then continue;
    count := 1;
    for j := i + 1 to n do
      if a[j] = a[i] then
      begin
        Inc(count);
        visited[j] := true;
      end;
    writeln(a[i]:5, count:10);
  end;
end.
