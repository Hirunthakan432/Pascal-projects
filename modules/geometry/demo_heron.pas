program DemoHeron;
uses Heron;
var a, b, c: real;
begin
  write('Sides a b c: ');
  readln(a, b, c);
  writeln('Area (Heron) = ', TriangleAreaHeron(a, b, c):0:4);
end.
