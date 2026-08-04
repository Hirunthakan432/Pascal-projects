program CountVowels;
var
  s: string;
  i, vowels: integer;
  ch: char;
begin
  write('Enter a sentence: ');
  readln(s);
  vowels := 0;
  for i := 1 to Length(s) do
  begin
    ch := UpCase(s[i]);
    if ch in ['A', 'E', 'I', 'O', 'U'] then
      Inc(vowels);
  end;
  writeln('Number of vowels = ', vowels);
end.
