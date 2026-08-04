program QuickSortDemo;
{ Classic QuickSort implementation }
const
  MAX = 100;

var
  a: array[1..MAX] of integer;
  n, i: integer;

procedure Swap(var x, y: integer);
var
  t: integer;
begin
  t := x; x := y; y := t;
end;

procedure QuickSort(low, high: integer);
var
  i, j, pivot: integer;
begin
  if low < high then
  begin
    pivot := a[(low + high) div 2];
    i := low;
    j := high;
    repeat
      while a[i] < pivot do i := i + 1;
      while a[j] > pivot do j := j - 1;
      if i <= j then
      begin
        Swap(a[i], a[j]);
        i := i + 1;
        j := j - 1;
      end;
    until i > j;
    if low < j then QuickSort(low, j);
    if i < high then QuickSort(i, high);
  end;
end;

begin
  write('Number of elements: ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
    readln(a[i]);

  QuickSort(1, n);

  writeln('Sorted:');
  for i := 1 to n do
    write(a[i], ' ');
  writeln;
end.
