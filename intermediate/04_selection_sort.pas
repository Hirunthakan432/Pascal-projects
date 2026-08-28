program SelectionSort;
const MaxN=100;
var a: array[1..MaxN] of integer; n,i,j,minIndex,temp: integer;
begin
  write('Number of elements: '); readln(n);
  for i:=1 to n do readln(a[i]);
  for i:=1 to n-1 do begin
    minIndex:=i;
    for j:=i+1 to n do if a[j]<a[minIndex] then minIndex:=j;
    temp:=a[i]; a[i]:=a[minIndex]; a[minIndex]:=temp;
  end;
  for i:=1 to n do write(a[i],' ');
  writeln;
end.
