program StringLengthManual;
var
  s: string;
  i, len: integer;
begin
  write('Enter a string: ');
  readln(s);
  len := 0;
  i := 1;
  while (i <= Length(s)) and (s[i] <> #0) do
  begin
    Inc(len);
    Inc(i);
  end;
  writeln('Length = ', len);
  writeln('Built-in Length = ', Length(s));
end.
