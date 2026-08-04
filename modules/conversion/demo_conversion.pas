program DemoConversion;

uses
  Conversion;

begin
  writeln('25 C  = ', CtoF(25):0:1, ' F');
  writeln('77 F  = ', FtoC(77):0:1, ' C');
  writeln('10 m  = ', MetersToFeet(10):0:2, ' ft');
  writeln('5 kg  = ', KgToPounds(5):0:2, ' lb');
  writeln('10 km = ', KmToMiles(10):0:3, ' miles');
end.
