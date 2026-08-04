program StringBasics;
{ Introduction to string operations }
var
  s, first, last: string;
  len: integer;
begin
  write('Enter your full name: ');
  readln(s);

  len := Length(s);
  writeln('Length of the string: ', len);
  writeln('Uppercase: ', UpCase(s));   { note: UpCase works on single chars in classic Pascal; many modern compilers support it on strings }

  { Simple first/last name split (assumes one space) }
  first := Copy(s, 1, Pos(' ', s) - 1);
  last  := Copy(s, Pos(' ', s) + 1, len);

  if Pos(' ', s) > 0 then
  begin
    writeln('First name: ', first);
    writeln('Last name : ', last);
  end
  else
    writeln('No space found - treated as single name.');
end.
