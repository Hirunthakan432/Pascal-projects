program Knapsack01;
{ 0/1 Knapsack using dynamic programming }
const
  MAX_N = 50;
  MAX_W = 200;
var
  weight, value: array[1..MAX_N] of integer;
  dp: array[0..MAX_N, 0..MAX_W] of integer;
  n, W, i, w: integer;

function Max(a, b: integer): integer;
begin
  if a > b then Max := a else Max := b;
end;

begin
  write('Number of items: ');
  readln(n);
  write('Knapsack capacity: ');
  readln(W);
  writeln('Enter weight and value for each item:');
  for i := 1 to n do
    readln(weight[i], value[i]);

  for i := 0 to n do
    for w := 0 to W do
      dp[i, w] := 0;

  for i := 1 to n do
    for w := 0 to W do
    begin
      dp[i, w] := dp[i - 1, w];
      if weight[i] <= w then
        dp[i, w] := Max(dp[i, w], dp[i - 1, w - weight[i]] + value[i]);
    end;

  writeln('Maximum value = ', dp[n, W]);
end.
