program MatrixMultiplication;

const
  MAX = 10;

var
  A, B, C: array[1..MAX, 1..MAX] of integer;
  m, n, p, i, j, k: integer;

begin
  write('Enter rows and columns of matrix A (m n): ');
  readln(m, n);
  write('Enter columns of matrix B (p): ');
  readln(p);

  writeln('Enter matrix A (', m, 'x', n, '):');
  for i := 1 to m do
    for j := 1 to n do
      read(A[i, j]);

  writeln('Enter matrix B (', n, 'x', p, '):');
  for i := 1 to n do
    for j := 1 to p do
      read(B[i, j]);

  { Multiply A * B = C }
  for i := 1 to m do
    for j := 1 to p do
    begin
      C[i, j] := 0;
      for k := 1 to n do
        C[i, j] := C[i, j] + A[i, k] * B[k, j];
    end;

  writeln('Result matrix C (', m, 'x', p, '):');
  for i := 1 to m do
  begin
    for j := 1 to p do
      write(C[i, j]:6);
    writeln;
  end;
end.
