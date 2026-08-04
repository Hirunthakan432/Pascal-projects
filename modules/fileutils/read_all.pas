unit ReadAll;
interface
function ReadEntireFile(const filename: string): string;
implementation
function ReadEntireFile(const filename: string): string;
var f: text; line, all: string;
begin
  all := '';
  assign(f, filename); reset(f);
  while not eof(f) do begin readln(f, line); all := all + line + #10; end;
  close(f);
  ReadEntireFile := all;
end;
end.
