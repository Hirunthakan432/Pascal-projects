program StackDemo;
const MaxN=20;
type Stack=record data: array[1..MaxN] of integer; top: integer; end;
var s: Stack; i: integer;
procedure Push(var st: Stack; x: integer); begin if st.top<MaxN then begin inc(st.top); st.data[st.top]:=x; end; end;
function Pop(var st: Stack): integer; begin if st.top>0 then begin Pop:=st.data[st.top]; dec(st.top); end else Pop:=-1; end;
begin
  s.top:=0;
  for i:=1 to 5 do Push(s,i*10);
  while s.top>0 do writeln('Pop: ',Pop(s));
end.
