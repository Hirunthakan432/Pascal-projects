program PrimeChecker;

function IsPrime(n: integer): boolean;
var
  i: integer;
begin
  if n < 2 then
  begin
    IsPrime := false;
    exit;
  end;

  IsPrime := true;
  for i := 2 to n div 2 do
    if n mod i = 0 then
    begin
      IsPrime := false;
      exit;
    end;
end;

var
  n: integer;

begin
  write('Enter an integer: ');
  readln(n);

  if IsPrime(n) then
    writeln(n, ' is prime.')
  else
    writeln(n, ' is not prime.');
end.
