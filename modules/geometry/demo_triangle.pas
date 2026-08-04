program DemoTriangle;
uses Geometry;
var b, h: real;
begin
  write('Base and height: ');
  readln(b, h);
  writeln('Area = ', TriangleArea(b, h):0:2);
end.
