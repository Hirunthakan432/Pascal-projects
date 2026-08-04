program ProcedureSwap;
{ Demonstrates procedures and pass-by-reference (var parameters) }

procedure Swap(var a, b: integer);
var
  temp: integer;
begin
  temp := a;
  a := b;
  b := temp;
end;

var
  x, y: integer;
begin
  write('Enter two integers: ');
  readln(x, y);
  writeln('Before swap: x = ', x, ', y = ', y);
  Swap(x, y);
  writeln('After swap : x = ', x, ', y = ', y);
end.
