unit GcdHelper;
{ Extra helper that could be used alongside MathUtils }
interface
function GCD(a, b: longint): longint;
function LCM(a, b: longint): longint;
implementation
function GCD(a, b: longint): longint;
var t: longint;
begin
  while b <> 0 do begin t := b; b := a mod b; a := t; end;
  GCD := a;
end;
function LCM(a, b: longint): longint;
begin
  LCM := (a div GCD(a, b)) * b;
end;
end.
