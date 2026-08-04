program FileReadWrite;
var
  f: text;
  line: string;
  i: integer;
begin
  { Write sample data to a file }
  assign(f, 'sample.txt');
  rewrite(f);
  for i := 1 to 5 do
    writeln(f, 'Line number ', i);
  close(f);

  { Read and display the file }
  assign(f, 'sample.txt');
  reset(f);
  writeln('Contents of sample.txt:');
  while not eof(f) do
  begin
    readln(f, line);
    writeln(line);
  end;
  close(f);
end.
