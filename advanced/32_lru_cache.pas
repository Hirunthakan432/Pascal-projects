program LRUCacheDemo;
const Capacity=4;
type
  Entry=record key,value,age: integer; valid:boolean; end;
var cache: array[1..Capacity] of Entry; tick,i,oldest,age: integer;
procedure Put(key,value:integer);
begin
  inc(tick);
  for i:=1 to Capacity do if cache[i].valid and (cache[i].key=key) then begin cache[i].value:=value; cache[i].age:=tick; exit; end;
  oldest:=1;
  for i:=1 to Capacity do if (not cache[i].valid) or (cache[i].age<cache[oldest].age) then oldest:=i;
  cache[oldest].key:=key; cache[oldest].value:=value; cache[oldest].age:=tick; cache[oldest].valid:=true;
end;
function Get(key:integer; var value:integer):boolean;
begin
  inc(tick); Get:=false;
  for i:=1 to Capacity do if cache[i].valid and (cache[i].key=key) then begin value:=cache[i].value; cache[i].age:=tick; Get:=true; exit; end;
end;
begin
  tick:=0; for i:=1 to Capacity do cache[i].valid:=false;
  Put(1,100); Put(2,200); Put(3,300); Put(4,400); Put(5,500);
  if Get(3,age) then writeln('Key 3 = ',age) else writeln('Key 3 not found');
end.
