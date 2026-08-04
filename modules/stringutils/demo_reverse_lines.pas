program ReverseLines;
uses StringUtils;
var line: string;
begin
  writeln('Enter lines (empty line to stop):');
  repeat
    readln(line);
    if line <> '' then
      writeln('Reversed: ', ReverseString(line));
  until line = '';
end.
