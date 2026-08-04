program DemoRectangle;
uses Geometry;
var w, h: real;
begin
  write('Width and height: ');
  readln(w, h);
  writeln('Area      = ', RectangleArea(w, h):0:2);
  writeln('Perimeter = ', RectanglePerimeter(w, h):0:2);
end.
