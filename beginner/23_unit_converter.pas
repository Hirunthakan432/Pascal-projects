program UnitConverter;
{ Mini-project: Interactive unit converter menu }
var
  choice: integer;
  value, result: real;
begin
  repeat
    writeln;
    writeln('=== Unit Converter ===');
    writeln('1. Celsius to Fahrenheit');
    writeln('2. Fahrenheit to Celsius');
    writeln('3. Kilometers to Miles');
    writeln('4. Miles to Kilometers');
    writeln('5. Exit');
    write('Choice: ');
    readln(choice);

    if choice in [1..4] then
    begin
      write('Enter value: ');
      readln(value);
    end;

    case choice of
      1: begin result := value * 9 / 5 + 32; writeln(value:0:2, ' C = ', result:0:2, ' F'); end;
      2: begin result := (value - 32) * 5 / 9; writeln(value:0:2, ' F = ', result:0:2, ' C'); end;
      3: begin result := value * 0.621371; writeln(value:0:2, ' km = ', result:0:3, ' miles'); end;
      4: begin result := value / 0.621371; writeln(value:0:2, ' miles = ', result:0:3, ' km'); end;
      5: writeln('Goodbye!');
    else
      writeln('Invalid choice.');
    end;
  until choice = 5;
end.
