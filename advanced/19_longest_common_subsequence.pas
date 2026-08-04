program LCS;
{ Longest Common Subsequence length (DP) }
const
  MAX = 100;
var
  s1, s2: string;
  dp: array[0..MAX, 0..MAX] of integer;
  i, j, n, m: integer;

function Max(a, b: integer): integer;
begin
  if a > b then Max := a else Max := b;
end;

begin
  write('String 1: ');
  readln(s1);
  write('String 2: ');
  readln(s2);
  n := Length(s1);
  m := Length(s2);

  for i := 0 to n do
    dp[i, 0] := 0;
  for j := 0 to m do
    dp[0, j] := 0;

  for i := 1 to n do
    for j := 1 to m do
      if s1[i] = s2[j] then
        dp[i, j] := dp[i - 1, j - 1] + 1
      else
        dp[i, j] := Max(dp[i - 1, j], dp[i, j - 1]);

  writeln('LCS length = ', dp[n, m]);
end.
