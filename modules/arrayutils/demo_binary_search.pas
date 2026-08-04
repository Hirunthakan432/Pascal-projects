program DemoBinarySearch;
uses ArrayUtils, BinarySearchUnit;
var data: TIntArray; n, t, pos, i: integer;
begin
  n := 10;
  for i := 1 to n do data[i] := i * 3;
  write('Sorted array: ');
  PrintArray(data, n);
  write('Search for: ');
  readln(t);
  pos := BinarySearch(data, n, t);
  if pos = 0 then writeln('Not found') else writeln('Found at index ', pos);
end.
