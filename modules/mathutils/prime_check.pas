unit PrimeCheck;
interface
function IsPrime(n: longint): boolean;
implementation
function IsPrime(n: longint): boolean;
var i: longint;
begin
  if n <= 1 then begin IsPrime := false; exit; end;
  if n <= 3 then begin IsPrime := true; exit; end;
  if (n mod 2 = 0) or (n mod 3 = 0) then begin IsPrime := false; exit; end;
  i := 5;
  while i * i <= n do
  begin
    if (n mod i = 0) or (n mod (i + 2) = 0) then begin IsPrime := false; exit; end;
    i := i + 6;
  end;
  IsPrime := true;
end;
end.
