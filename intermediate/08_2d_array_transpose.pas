program MatrixTranspose;
{ Read a matrix and print its transpose }
const
  MAX = 10;
var
  a, t: array[1..MAX, 1..MAX] of integer;
  rows, cols, i, j: integer;
begin
  write('Enter rows and columns: ');
  readln(rows, cols);

  writeln('Enter the matrix:');
  for i := 1 to rows do
    for j := 1 to cols do
      read(a[i, j]);

  { Compute transpose }
  for i := 1 to rows do
    for j := 1 to cols do
      t[j, i] := a[i, j];

  writeln('Transpose:');
  for i := 1 to cols do
  begin
    for j := 1 to rows do
      write(t[i, j]:5);
    writeln;
  end;
end.
