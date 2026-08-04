program CountCharacters;
{ Count frequency of each letter in a string (case-insensitive) }
var
  s: string;
  count: array['A'..'Z'] of integer;
  i: integer;
  ch: char;
begin
  for ch := 'A' to 'Z' do
    count[ch] := 0;

  write('Enter a sentence: ');
  readln(s);
  s := UpCase(s);

  for i := 1 to Length(s) do
  begin
    ch := s[i];
    if (ch >= 'A') and (ch <= 'Z') then
      count[ch] := count[ch] + 1;
  end;

  writeln('Letter frequencies:');
  for ch := 'A' to 'Z' do
    if count[ch] > 0 then
      writeln(ch, ' : ', count[ch]);
end.
