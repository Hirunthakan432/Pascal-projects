program DemoArrayUtils;

uses
  ArrayUtils;

var
  data: TIntArray;
  n: integer;
begin
  n := 10;
  FillRandom(data, n, 50);
  write('Original : ');
  PrintArray(data, n);

  writeln('Sum      : ', SumArray(data, n));
  writeln('Max      : ', MaxValue(data, n));
  writeln('Min      : ', MinValue(data, n));

  BubbleSort(data, n);
  write('Sorted   : ');
  PrintArray(data, n);
end.
