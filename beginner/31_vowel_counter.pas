program VowelCounter;
var s: string; i, count: integer;
begin
  write('Enter text: '); readln(s);
  count := 0;
  for i := 1 to length(s) do
    if upcase(s[i]) in ['A','E','I','O','U'] then inc(count);
  writeln('Vowels = ', count);
end.
