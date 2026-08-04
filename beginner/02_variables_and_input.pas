program VariablesAndInput;
var
  name: string;
  age: integer;
begin
  write('Enter your name: ');
  readln(name);
  write('Enter your age: ');
  readln(age);
  writeln('Hello, ', name, '! You are ', age, ' years old.');
end.
