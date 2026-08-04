unit ArrayUtils;
{ Utility functions for integer arrays }

interface

const
  MAX_SIZE = 100;

type
  TIntArray = array[1..MAX_SIZE] of integer;

procedure FillRandom(var a: TIntArray; n: integer; maxVal: integer);
procedure PrintArray(const a: TIntArray; n: integer);
function SumArray(const a: TIntArray; n: integer): longint;
function MaxValue(const a: TIntArray; n: integer): integer;
function MinValue(const a: TIntArray; n: integer): integer;
procedure BubbleSort(var a: TIntArray; n: integer);

implementation

procedure FillRandom(var a: TIntArray; n: integer; maxVal: integer);
var
  i: integer;
begin
  Randomize;
  for i := 1 to n do
    a[i] := Random(maxVal) + 1;
end;

procedure PrintArray(const a: TIntArray; n: integer);
var
  i: integer;
begin
  for i := 1 to n do
    write(a[i], ' ');
  writeln;
end;

function SumArray(const a: TIntArray; n: integer): longint;
var
  i: integer;
  s: longint;
begin
  s := 0;
  for i := 1 to n do
    s := s + a[i];
  SumArray := s;
end;

function MaxValue(const a: TIntArray; n: integer): integer;
var
  i, m: integer;
begin
  m := a[1];
  for i := 2 to n do
    if a[i] > m then m := a[i];
  MaxValue := m;
end;

function MinValue(const a: TIntArray; n: integer): integer;
var
  i, m: integer;
begin
  m := a[1];
  for i := 2 to n do
    if a[i] < m then m := a[i];
  MinValue := m;
end;

procedure BubbleSort(var a: TIntArray; n: integer);
var
  i, j, temp: integer;
begin
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if a[j] > a[j + 1] then
      begin
        temp := a[j];
        a[j] := a[j + 1];
        a[j + 1] := temp;
      end;
end;

end.
