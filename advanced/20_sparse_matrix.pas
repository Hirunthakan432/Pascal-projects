program SparseMatrix;
{ Represent a sparse matrix as list of (row, col, value) triples }
const
  MAX = 50;
type
  TTriple = record
    r, c, v: integer;
  end;
var
  triples: array[1..MAX] of TTriple;
  rows, cols, n, i, j, val, count: integer;
begin
  write('Matrix rows and columns: ');
  readln(rows, cols);
  count := 0;
  writeln('Enter matrix (', rows, 'x', cols, '):');
  for i := 1 to rows do
    for j := 1 to cols do
    begin
      read(val);
      if val <> 0 then
      begin
        Inc(count);
        triples[count].r := i;
        triples[count].c := j;
        triples[count].v := val;
      end;
    end;

  writeln('Sparse representation (row, col, value):');
  writeln(rows:5, cols:5, count:5, '  (rows, cols, non-zeros)');
  for i := 1 to count do
    writeln(triples[i].r:5, triples[i].c:5, triples[i].v:5);
end.
