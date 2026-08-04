program PalindromeChecker;
uses StringUtils;
var s: string;
begin
  write('Enter a word: ');
  readln(s);
  s := ToUpper(TrimSpaces(s));
  if IsPalindrome(s) then
    writeln(s, ' is a palindrome')
  else
    writeln(s, ' is not a palindrome');
end.
