unit Geometry;
{ Basic 2D geometry helpers }

interface

const
  PI = 3.141592653589793;

function CircleArea(r: real): real;
function CircleCircumference(r: real): real;
function RectangleArea(w, h: real): real;
function RectanglePerimeter(w, h: real): real;
function TriangleArea(base, height: real): real;
function Distance(x1, y1, x2, y2: real): real;

implementation

function CircleArea(r: real): real;
begin
  CircleArea := PI * r * r;
end;

function CircleCircumference(r: real): real;
begin
  CircleCircumference := 2 * PI * r;
end;

function RectangleArea(w, h: real): real;
begin
  RectangleArea := w * h;
end;

function RectanglePerimeter(w, h: real): real;
begin
  RectanglePerimeter := 2 * (w + h);
end;

function TriangleArea(base, height: real): real;
begin
  TriangleArea := 0.5 * base * height;
end;

function Distance(x1, y1, x2, y2: real): real;
begin
  Distance := Sqrt(Sqr(x2 - x1) + Sqr(y2 - y1));
end;

end.
