program BubbleSort;

const
  MAX = 100;

var
  arr: array[1..MAX] of integer;
  n, i, j, temp: integer;

begin
  write('Enter number of elements: ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
    readln(arr[i]);

  { Bubble sort }
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if arr[j] > arr[j + 1] then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;

  writeln('Sorted array:');
  for i := 1 to n do
    write(arr[i], ' ');
  writeln;
end.
