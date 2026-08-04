program DemoGeometry;

uses
  Geometry;

begin
  writeln('Circle area (r=5)       = ', CircleArea(5):0:4);
  writeln('Circle circumference    = ', CircleCircumference(5):0:4);
  writeln('Rectangle area (4x6)    = ', RectangleArea(4, 6):0:2);
  writeln('Rectangle perimeter     = ', RectanglePerimeter(4, 6):0:2);
  writeln('Triangle area (base=8)  = ', TriangleArea(8, 5):0:2);
  writeln('Distance (0,0)-(3,4)    = ', Distance(0, 0, 3, 4):0:2);
end.
