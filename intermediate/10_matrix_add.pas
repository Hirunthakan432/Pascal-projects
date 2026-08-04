program MatrixAdd;
const
  MAX = 10;
var
  a, b, c: array[1..MAX, 1..MAX] of integer;
  rows, cols, i, j: integer;
begin
  write('Rows and columns: ');
  readln(rows, cols);
  writeln('Matrix A:');
  for i := 1 to rows do
    for j := 1 to cols do
      read(a[i, j]);
  writeln('Matrix B:');
  for i := 1 to rows do
    for j := 1 to cols do
      read(b[i, j]);
  for i := 1 to rows do
    for j := 1 to cols do
      c[i, j] := a[i, j] + b[i, j];
  writeln('A + B:');
  for i := 1 to rows do
  begin
    for j := 1 to cols do
      write(c[i, j]:5);
    writeln;
  end;
end.
