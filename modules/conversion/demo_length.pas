program DemoLength;
uses Conversion;
var m: real;
begin
  write('Meters: ');
  readln(m);
  writeln(m:0:2, ' m = ', MetersToFeet(m):0:2, ' ft');
  writeln(MetersToFeet(m):0:2, ' ft = ', FeetToMeters(MetersToFeet(m)):0:2, ' m');
end.
