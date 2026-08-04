program DemoCircle;
uses Geometry;
var r: real;
begin
  write('Radius: ');
  readln(r);
  writeln('Area          = ', CircleArea(r):0:4);
  writeln('Circumference = ', CircleCircumference(r):0:4);
end.
