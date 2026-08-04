program TrimUpperDemo;
uses StringUtils;
var s: string;
begin
  s := '   hello pascal   ';
  writeln('Original : [', s, ']');
  writeln('Trimmed  : [', TrimSpaces(s), ']');
  writeln('Upper    : [', ToUpper(TrimSpaces(s)), ']');
end.
