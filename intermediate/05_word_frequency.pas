program WordFrequency;
var s, word: string; i: integer; count: integer;
begin
  write('Enter a word: '); readln(word);
  write('Enter a sentence: '); readln(s);
  count := 0;
  i := 1;
  while i <= length(s) do begin
    while (i <= length(s)) and (s[i]=' ') do inc(i);
    if i > length(s) then break;
    if copy(s,i,length(word))=word then inc(count);
    while (i <= length(s)) and (s[i]<>' ') do inc(i);
  end;
  writeln('Occurrences: ', count);
end.
