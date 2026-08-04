program LinearSearch;
{ Linear search in an unsorted array }
const
  MAX = 50;
var
  arr: array[1..MAX] of integer;
  n, i, target, pos: integer;
  found: boolean;
begin
  write('How many elements? ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
    readln(arr[i]);

  write('Value to search for: ');
  readln(target);

  found := false;
  pos := 0;
  for i := 1 to n do
    if arr[i] = target then
    begin
      found := true;
      pos := i;
      break;
    end;

  if found then
    writeln('Found at index ', pos)
  else
    writeln('Not found.');
end.
