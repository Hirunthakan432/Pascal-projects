program DemoReverseArray;
uses ArrayUtils, ReverseArray;
var data: TIntArray; n: integer;
begin
  n := 7;
  FillRandom(data, n, 50);
  write('Original: ');
  PrintArray(data, n);
  Reverse(data, n);
  write('Reversed: ');
  PrintArray(data, n);
end.
