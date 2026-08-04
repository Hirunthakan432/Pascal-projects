unit MinMaxStack;
{ Track min/max while using a simple stack of values }
interface
procedure InitMM;
procedure PushMM(v: integer);
function PopMM: integer;
function CurrentMin: integer;
function CurrentMax: integer;
implementation
const MAX = 50;
var data: array[1..MAX] of integer; top, mn, mx: integer;
procedure InitMM; begin top := 0; mn := MaxInt; mx := -MaxInt; end;
procedure PushMM(v: integer);
begin
  if top < MAX then begin Inc(top); data[top] := v;
    if v < mn then mn := v; if v > mx then mx := v; end;
end;
function PopMM: integer;
begin
  if top = 0 then PopMM := -1 else begin PopMM := data[top]; Dec(top); end;
end;
function CurrentMin: integer; begin CurrentMin := mn; end;
function CurrentMax: integer; begin CurrentMax := mx; end;
end.
