program DemoSphere;
uses Sphere;
var r: real;
begin
  write('Sphere radius: ');
  readln(r);
  writeln('Volume  = ', SphereVolume(r):0:4);
  writeln('Surface = ', SphereSurface(r):0:4);
end.
