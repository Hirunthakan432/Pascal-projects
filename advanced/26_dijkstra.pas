program Dijkstra;
const N=5; INF=1000000;
var d: array[1..N] of integer; used: array[1..N] of boolean;
    w: array[1..N,1..N] of integer; i,j,k,u,min: integer;
begin
  for i:=1 to N do for j:=1 to N do read(w[i,j]);
  for i:=1 to N do begin d[i]:=INF; used[i]:=false; end;
  d[1]:=0;
  for k:=1 to N do begin
    u:=0; min:=INF;
    for i:=1 to N do if (not used[i]) and (d[i]<min) then begin min:=d[i]; u:=i; end;
    if u=0 then break;
    used[u]:=true;
    for i:=1 to N do if (w[u,i]>0) and (d[u]+w[u,i]<d[i]) then d[i]:=d[u]+w[u,i];
  end;
  for i:=1 to N do writeln('Distance 1 -> ',i,' = ',d[i]);
end.
