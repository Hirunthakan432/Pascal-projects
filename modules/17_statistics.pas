unit Statistics;
{ Basic statistical functions for real arrays }

interface

const
  STAT_MAX = 200;

type
  TRealArray = array[1..STAT_MAX] of real;

function Mean(const a: TRealArray; n: integer): real;
function Variance(const a: TRealArray; n: integer): real;
function StdDev(const a: TRealArray; n: integer): real;
function Median(var a: TRealArray; n: integer): real;  { sorts a copy conceptually }

implementation

function Mean(const a: TRealArray; n: integer): real;
var
  i: integer;
  s: real;
begin
  s := 0;
  for i := 1 to n do
    s := s + a[i];
  Mean := s / n;
end;

function Variance(const a: TRealArray; n: integer): real;
var
  i: integer;
  m, s: real;
begin
  m := Mean(a, n);
  s := 0;
  for i := 1 to n do
    s := s + Sqr(a[i] - m);
  Variance := s / n;
end;

function StdDev(const a: TRealArray; n: integer): real;
begin
  StdDev := Sqrt(Variance(a, n));
end;

function Median(var a: TRealArray; n: integer): real;
var
  i, j: integer;
  temp: real;
begin
  { simple bubble sort of the array }
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if a[j] > a[j + 1] then
      begin
        temp := a[j];
        a[j] := a[j + 1];
        a[j + 1] := temp;
      end;

  if n mod 2 = 1 then
    Median := a[(n div 2) + 1]
  else
    Median := (a[n div 2] + a[(n div 2) + 1]) / 2;
end;

end.
