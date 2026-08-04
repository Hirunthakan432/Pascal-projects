program DemoArea;
uses AreaConv;
begin
  writeln('10 m^2 = ', SqMetersToSqFeet(10):0:2, ' ft^2');
  writeln('100 ft^2 = ', SqFeetToSqMeters(100):0:2, ' m^2');
end.
