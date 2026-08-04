program MergeSortDemo;
const
  MAX = 100;
var
  a: array[1..MAX] of integer;
  n, i: integer;

procedure Merge(low, mid, high: integer);
var
  i, j, k: integer;
  temp: array[1..MAX] of integer;
begin
  i := low; j := mid + 1; k := low;
  while (i <= mid) and (j <= high) do
  begin
    if a[i] <= a[j] then begin temp[k] := a[i]; Inc(i); end
    else begin temp[k] := a[j]; Inc(j); end;
    Inc(k);
  end;
  while i <= mid do begin temp[k] := a[i]; Inc(i); Inc(k); end;
  while j <= high do begin temp[k] := a[j]; Inc(j); Inc(k); end;
  for i := low to high do
    a[i] := temp[i];
end;

procedure MergeSort(low, high: integer);
var
  mid: integer;
begin
  if low < high then
  begin
    mid := (low + high) div 2;
    MergeSort(low, mid);
    MergeSort(mid + 1, high);
    Merge(low, mid, high);
  end;
end;

begin
  write('Number of elements: ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
    readln(a[i]);
  MergeSort(1, n);
  write('Sorted: ');
  for i := 1 to n do
    write(a[i], ' ');
  writeln;
end.
