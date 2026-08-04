program DemoStringUtils;

uses
  StringUtils;

var
  s: string;
begin
  s := '  Radar  ';
  writeln('Original : [', s, ']');
  writeln('Trimmed  : [', TrimSpaces(s), ']');
  writeln('Upper    : ', ToUpper(TrimSpaces(s)));
  writeln('Reversed : ', ReverseString(TrimSpaces(s)));
  writeln('Palindrome? ', IsPalindrome(ToUpper(TrimSpaces(s))));
  writeln('Count of ''a'': ', CountChar(ToUpper(TrimSpaces(s)), 'A'));
end.
