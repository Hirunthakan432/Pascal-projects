program DemoLinearSearch;
uses ArrayUtils, LinearSearchUnit;
var data: TIntArray; n, t, pos: integer;
begin
  n := 10;
  FillRandom(data, n, 20);
  write('Array: ');
  PrintArray(data, n);
  write('Search for: ');
  readln(t);
  pos := FindFirst(data, n, t);
  if pos = 0 then writeln('Not found') else writeln('Found at index ', pos);
end.
