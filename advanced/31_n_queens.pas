program NQueens;
const N=8;
var col: array[1..N] of integer; row: integer;
function Safe(r,c:integer):boolean;
var i:integer;
begin Safe:=true; for i:=1 to r-1 do if (col[i]=c) or (abs(col[i]-c)=abs(i-r)) then Safe:=false; end;
procedure Solve(r:integer);
var c,i:integer;
begin
  if r>N then begin for i:=1 to N do writeln(StringOfChar('.',col[i]-1),'Q'); writeln; exit; end;
  for c:=1 to N do if Safe(r,c) then begin col[r]:=c; Solve(r+1); end;
end;
begin Solve(1); end.
