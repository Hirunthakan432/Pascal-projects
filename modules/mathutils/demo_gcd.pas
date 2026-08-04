program DemoGcd;
uses GcdHelper;
var x, y: longint;
begin
  write('Enter two positive integers: ');
  readln(x, y);
  writeln('GCD = ', GCD(x, y));
  writeln('LCM = ', LCM(x, y));
end.
