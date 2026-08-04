program CountLinesDemo;
uses FileUtils;
var lines: array[0..2] of string;
begin
  lines[0] := 'alpha'; lines[1] := 'beta'; lines[2] := 'gamma';
  WriteLines('sample3.txt', lines, 3);
  writeln('Lines in sample3.txt: ', CountLines('sample3.txt'));
end.
