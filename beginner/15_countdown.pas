program Countdown;
var
  n: integer;
begin
  write('Start from: ');
  readln(n);
  while n >= 0 do
  begin
    writeln(n);
    n := n - 1;
  end;
  writeln('Lift off!');
end.
