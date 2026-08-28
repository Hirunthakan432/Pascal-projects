program GCDEuclid;
function GCD(a,b: longint): longint;
begin while b<>0 do begin a:=a mod b; if a=0 then begin GCD:=b; exit; end; b:=b-a; end; GCD:=a; end;
var a,b:longint;
begin write('Enter two integers: '); readln(a,b); writeln('GCD = ',GCD(a,b)); end.
