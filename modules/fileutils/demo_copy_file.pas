program DemoCopyFile;
uses FileUtils, CopyFileUnit;
var lines: array[0..1] of string;
begin
  lines[0] := 'Hello'; lines[1] := 'World';
  WriteLines('src.txt', lines, 2);
  CopyTextFile('src.txt', 'dst.txt');
  writeln('Copied file contents:');
  PrintFile('dst.txt');
end.
