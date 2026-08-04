program SelectionSort;
const
  MAX = 50;
var
  a: array[1..MAX] of integer;
  n, i, j, minIdx, temp: integer;
begin
  write('Number of elements: ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
    readln(a[i]);
  for i := 1 to n - 1 do
  begin
    minIdx := i;
    for j := i + 1 to n do
      if a[j] < a[minIdx] then
        minIdx := j;
    temp := a[i];
    a[i] := a[minIdx];
    a[minIdx] := temp;
  end;
  write('Sorted: ');
  for i := 1 to n do
    write(a[i], ' ');
  writeln;
end.
