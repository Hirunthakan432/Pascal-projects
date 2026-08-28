program LinearSearch;
const MaxN = 100;
var a: array[1..MaxN] of integer; n,i,target,pos: integer;
begin
  write('Number of elements: '); readln(n);
  for i := 1 to n do readln(a[i]);
  write('Target: '); readln(target); pos := 0;
  for i := 1 to n do if (pos=0) and (a[i]=target) then pos := i;
  if pos > 0 then writeln('Found at position ', pos) else writeln('Not found');
end.
