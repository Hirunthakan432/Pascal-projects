unit FileUtils;
{ Simple text-file helpers }

interface

procedure WriteLines(const filename: string; const lines: array of string; count: integer);
procedure PrintFile(const filename: string);
function CountLines(const filename: string): integer;

implementation

procedure WriteLines(const filename: string; const lines: array of string; count: integer);
var
  f: text;
  i: integer;
begin
  assign(f, filename);
  rewrite(f);
  for i := 0 to count - 1 do
    writeln(f, lines[i]);
  close(f);
end;

procedure PrintFile(const filename: string);
var
  f: text;
  line: string;
begin
  assign(f, filename);
  reset(f);
  while not eof(f) do
  begin
    readln(f, line);
    writeln(line);
  end;
  close(f);
end;

function CountLines(const filename: string): integer;
var
  f: text;
  line: string;
  cnt: integer;
begin
  cnt := 0;
  assign(f, filename);
  reset(f);
  while not eof(f) do
  begin
    readln(f, line);
    Inc(cnt);
  end;
  close(f);
  CountLines := cnt;
end;

end.
