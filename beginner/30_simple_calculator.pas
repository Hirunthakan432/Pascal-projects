program SimpleCalculator;
var a,b: real; op: char;
begin
  write('Enter first number: '); readln(a);
  write('Enter operator (+,-,*,/): '); readln(op);
  write('Enter second number: '); readln(b);
  case op of
    '+': writeln('Result = ', a+b:0:2);
    '-': writeln('Result = ', a-b:0:2);
    '*': writeln('Result = ', a*b:0:2);
    '/': if b <> 0 then writeln('Result = ', a/b:0:2) else writeln('Cannot divide by zero');
  else writeln('Invalid operator');
  end;
end.
