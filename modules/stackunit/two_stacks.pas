unit TwoStacks;
{ Two stacks sharing one array (classic exercise) }
interface
procedure InitTwo;
procedure Push1(v: integer);
procedure Push2(v: integer);
function Pop1: integer;
function Pop2: integer;
implementation
const MAX = 40;
var a: array[1..MAX] of integer; top1, top2: integer;
procedure InitTwo; begin top1 := 0; top2 := MAX + 1; end;
procedure Push1(v: integer);
begin if top1 + 1 < top2 then begin Inc(top1); a[top1] := v; end
  else writeln('Overflow'); end;
procedure Push2(v: integer);
begin if top1 + 1 < top2 then begin Dec(top2); a[top2] := v; end
  else writeln('Overflow'); end;
function Pop1: integer;
begin if top1 = 0 then Pop1 := -1 else begin Pop1 := a[top1]; Dec(top1); end; end;
function Pop2: integer;
begin if top2 = MAX + 1 then Pop2 := -1 else begin Pop2 := a[top2]; Inc(top2); end; end;
end.
