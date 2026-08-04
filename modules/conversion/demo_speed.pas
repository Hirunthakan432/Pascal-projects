program DemoSpeed;
uses SpeedConv;
begin
  writeln('100 km/h = ', KmhToMph(100):0:2, ' mph');
  writeln('60 mph   = ', MphToKmh(60):0:2, ' km/h');
end.
