program FrequencyCounter;
const MaxN=100;
var a: array[1..MaxN] of integer; n,i,j,count: integer; value: integer;
begin
  write('Number of elements: '); readln(n);
  for i:=1 to n do readln(a[i]);
  for i:=1 to n do begin
    if (i>1) and (a[i]=a[i-1]) then continue;
    value:=a[i]; count:=0;
    for j:=1 to n do if a[j]=value then inc(count);
    writeln(value, ' occurs ', count, ' time(s)');
  end;
end.
