program DemoWeight;
uses Conversion;
var kg: real;
begin
  write('Kilograms: ');
  readln(kg);
  writeln(kg:0:2, ' kg = ', KgToPounds(kg):0:2, ' lb');
end.
