unit AppendFile;
interface
procedure AppendLine(const filename, line: string);
implementation
procedure AppendLine(const filename, line: string);
var f: text;
begin
  assign(f, filename);
  {$I-} append(f); {$I+}
  if IOResult <> 0 then rewrite(f);
  writeln(f, line);
  close(f);
end;
end.
