program DemoDistanceConv;
uses Conversion;
var km: real;
begin
  write('Kilometers: ');
  readln(km);
  writeln(km:0:2, ' km = ', KmToMiles(km):0:3, ' miles');
end.
