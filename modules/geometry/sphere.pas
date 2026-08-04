unit Sphere;
interface
uses Geometry;
function SphereVolume(r: real): real;
function SphereSurface(r: real): real;
implementation
function SphereVolume(r: real): real;
begin SphereVolume := (4.0 / 3.0) * PI * r * r * r; end;
function SphereSurface(r: real): real;
begin SphereSurface := 4 * PI * r * r; end;
end.
