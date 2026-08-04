unit Heron;
{ Triangle area by Heron's formula }
interface
function TriangleAreaHeron(a, b, c: real): real;
implementation
function TriangleAreaHeron(a, b, c: real): real;
var s: real;
begin
  s := (a + b + c) / 2;
  TriangleAreaHeron := Sqrt(s * (s - a) * (s - b) * (s - c));
end;
end.
