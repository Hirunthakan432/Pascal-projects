unit StringUtils;
{ Common string helper functions }

interface

function ReverseString(const s: string): string;
function IsPalindrome(const s: string): boolean;
function CountChar(const s: string; c: char): integer;
function ToUpper(const s: string): string;
function TrimSpaces(const s: string): string;

implementation

function ReverseString(const s: string): string;
var
  i: integer;
  r: string;
begin
  r := '';
  for i := Length(s) downto 1 do
    r := r + s[i];
  ReverseString := r;
end;

function IsPalindrome(const s: string): boolean;
begin
  IsPalindrome := s = ReverseString(s);
end;

function CountChar(const s: string; c: char): integer;
var
  i, cnt: integer;
begin
  cnt := 0;
  for i := 1 to Length(s) do
    if s[i] = c then
      Inc(cnt);
  CountChar := cnt;
end;

function ToUpper(const s: string): string;
var
  i: integer;
  r: string;
begin
  r := s;
  for i := 1 to Length(r) do
    if (r[i] >= 'a') and (r[i] <= 'z') then
      r[i] := Chr(Ord(r[i]) - 32);
  ToUpper := r;
end;

function TrimSpaces(const s: string): string;
var
  start, finish: integer;
begin
  start := 1;
  while (start <= Length(s)) and (s[start] = ' ') do
    Inc(start);
  finish := Length(s);
  while (finish >= start) and (s[finish] = ' ') do
    Dec(finish);
  if start > finish then
    TrimSpaces := ''
  else
    TrimSpaces := Copy(s, start, finish - start + 1);
end;

end.
