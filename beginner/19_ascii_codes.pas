program AsciiCodes;
var
  c: char;
  i: integer;
begin
  write('Enter a character: ');
  readln(c);
  writeln('ASCII code of ''', c, ''' is ', Ord(c));
  writeln;
  writeln('A..Z codes:');
  for i := Ord('A') to Ord('Z') do
    write(Chr(i), '=', i, '  ');
  writeln;
end.
