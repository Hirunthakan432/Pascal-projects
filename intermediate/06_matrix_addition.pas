program MatrixAddition;
const N=3;
var a,b,c: array[1..N,1..N] of integer; i,j: integer;
begin
  writeln('Enter matrix A:'); for i:=1 to N do for j:=1 to N do read(a[i,j]);
  writeln('Enter matrix B:'); for i:=1 to N do for j:=1 to N do read(b[i,j]);
  for i:=1 to N do for j:=1 to N do c[i,j]:=a[i,j]+b[i,j];
  writeln('A + B:');
  for i:=1 to N do begin for j:=1 to N do write(c[i,j]:5); writeln; end;
end.
