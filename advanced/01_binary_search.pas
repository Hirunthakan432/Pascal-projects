program BinarySearch;

const
  MAX = 100;

var
  arr: array[1..MAX] of integer;
  n, i, target, low, high, mid: integer;
  found: boolean;

begin
  write('Enter number of sorted elements: ');
  readln(n);
  writeln('Enter ', n, ' sorted integers (ascending):');
  for i := 1 to n do
    readln(arr[i]);

  write('Enter value to search: ');
  readln(target);

  low := 1;
  high := n;
  found := false;

  while (low <= high) and (not found) do
  begin
    mid := (low + high) div 2;
    if arr[mid] = target then
      found := true
    else if arr[mid] < target then
      low := mid + 1
    else
      high := mid - 1;
  end;

  if found then
    writeln('Found at position ', mid)
  else
    writeln('Not found');
end.
