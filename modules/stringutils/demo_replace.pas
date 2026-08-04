program DemoReplace;
uses ReplaceChar;
var s: string;
begin
  s := 'banana';
  writeln('Original: ', s);
  writeln('a -> o  : ', ReplaceAll(s, 'a', 'o'));
end.
