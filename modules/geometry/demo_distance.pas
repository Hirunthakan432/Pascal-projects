program DemoDistance;
uses Geometry;
var x1, y1, x2, y2: real;
begin
  write('Point 1 (x y): ');
  readln(x1, y1);
  write('Point 2 (x y): ');
  readln(x2, y2);
  writeln('Distance = ', Distance(x1, y1, x2, y2):0:4);
end.
