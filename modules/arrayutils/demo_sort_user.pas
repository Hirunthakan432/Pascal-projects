program SortUserInput;
uses ArrayUtils;
var data: TIntArray; n, i: integer;
begin
  write('How many numbers? ');
  readln(n);
  writeln('Enter ', n, ' integers:');
  for i := 1 to n do readln(data[i]);
  BubbleSort(data, n);
  write('Sorted: ');
  PrintArray(data, n);
end.
