program UnitDemo;
{ Example that would normally use a separate unit.
  For simplicity everything is in one file here.
  In a real project you would put MathHelpers in mathhelpers.pas }

{ ----- simulated unit MathHelpers ----- }
function Power(base: real; exp: integer): real;
var
  i: integer;
  result: real;
begin
  result := 1;
  for i := 1 to abs(exp) do
    result := result * base;
  if exp < 0 then
    result := 1 / result;
  Power := result;
end;

function CircleArea(radius: real): real;
begin
  CircleArea := 3.1415926535 * radius * radius;
end;
{ ----- end of simulated unit ----- }

var
  r, area: real;
  p: real;
begin
  write('Enter radius: ');
  readln(r);
  area := CircleArea(r);
  writeln('Area of circle: ', area:0:4);

  p := Power(2, 10);
  writeln('2^10 = ', p:0:0);
end.
