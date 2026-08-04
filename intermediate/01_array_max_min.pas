program ArrayMaxMin;
const
  MAX = 100;
var
  arr: array[1..MAX] of integer;
  n, i, maxVal, minVal: integer;
begin
  write('How many numbers (1-', MAX, ')? ');
  readln(n);
  if (n < 1) or (n > MAX) then
  begin
    writeln('Invalid size');
    halt;
  end;

  writeln('Enter ', n, ' integers:');
  for i := 1 to n do
    readln(arr[i]);

  maxVal := arr[1];
  minVal := arr[1];
  for i := 2 to n do
  begin
    if arr[i] > maxVal then maxVal := arr[i];
    if arr[i] < minVal then minVal := arr[i];
  end;

  writeln('Maximum: ', maxVal);
  writeln('Minimum: ', minVal);
end.
