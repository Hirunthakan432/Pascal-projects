program CharCountDemo;
uses StringUtils;
var s: string; c: char;
begin
  write('Enter text: ');
  readln(s);
  write('Character to count: ');
  readln(c);
  writeln('Count of ''', c, ''' = ', CountChar(s, c));
end.
