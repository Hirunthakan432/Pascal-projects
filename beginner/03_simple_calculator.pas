program SimpleCalculator;
var
  a, b: real;
  op: char;
  result: real;
begin
  write('Enter first number: ');
  readln(a);
  write('Enter operator (+, -, *, /): ');
  readln(op);
  write('Enter second number: ');
  readln(b);

  case op of
    '+': result := a + b;
    '-': result := a - b;
    '*': result := a * b;
    '/': if b <> 0 then
           result := a / b
         else
         begin
           writeln('Error: Division by zero!');
           halt;
         end;
  else
    writeln('Invalid operator!');
    halt;
  end;

  writeln('Result: ', result:0:2);
end.
