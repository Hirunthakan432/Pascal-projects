program WriteNumbers;
uses FileUtils;
var lines: array[0..4] of string; i: integer;
begin
  for i := 0 to 4 do
    lines[i] := 'Number ' + Chr(Ord('1') + i);
  WriteLines('numbers.txt', lines, 5);
  writeln('Written numbers.txt');
  PrintFile('numbers.txt');
end.
