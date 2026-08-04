program InsertionSort;
const
  MAX = 100;
var
  a: array[1..MAX] of integer;
  n, i, j, key: integer;
begin
  write('Number of elements: ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
    readln(a[i]);
  for i := 2 to n do
  begin
    key := a[i];
    j := i - 1;
    while (j >= 1) and (a[j] > key) do
    begin
      a[j + 1] := a[j];
      Dec(j);
    end;
    a[j + 1] := key;
  end;
  write('Sorted: ');
  for i := 1 to n do
    write(a[i], ' ');
  writeln;
end.
