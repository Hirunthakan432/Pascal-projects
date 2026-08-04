program TempTable;
uses Conversion;
var c: integer;
begin
  writeln('C      F');
  for c := 0 to 100 do
    if c mod 10 = 0 then
      writeln(c:3, '  ', CtoF(c):6:1);
end.
