program DemoTemp;
uses Conversion;
var t: real; choice: char;
begin
  write('C or F? ');
  readln(choice);
  write('Value: ');
  readln(t);
  if (choice = 'C') or (choice = 'c') then
    writeln(t:0:1, ' C = ', CtoF(t):0:1, ' F')
  else
    writeln(t:0:1, ' F = ', FtoC(t):0:1, ' C');
end.
