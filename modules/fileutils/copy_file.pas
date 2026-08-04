unit CopyFileUnit;
interface
procedure CopyTextFile(const src, dst: string);
implementation
procedure CopyTextFile(const src, dst: string);
var f1, f2: text; line: string;
begin
  assign(f1, src); reset(f1);
  assign(f2, dst); rewrite(f2);
  while not eof(f1) do begin readln(f1, line); writeln(f2, line); end;
  close(f1); close(f2);
end;
end.
