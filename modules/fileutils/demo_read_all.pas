program DemoReadAll;
uses FileUtils, ReadAll;
var lines: array[0..1] of string;
begin
  lines[0] := 'Line A'; lines[1] := 'Line B';
  WriteLines('two.txt', lines, 2);
  writeln('Entire content:');
  write(ReadEntireFile('two.txt'));
end.
