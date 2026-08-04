program DemoWordCount;
uses WordCount;
var s: string;
begin
  write('Enter a sentence: ');
  readln(s);
  writeln('Word count: ', CountWords(s));
end.
