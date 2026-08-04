unit MathUtils;
{ Basic math helper unit }

interface

function Add(a, b: integer): integer;
function Subtract(a, b: integer): integer;
function Multiply(a, b: integer): integer;
function Divide(a, b: real): real;
function Power(base: real; exp: integer): real;
function Factorial(n: integer): longint;

implementation

function Add(a, b: integer): integer;
begin
  Add := a + b;
end;

function Subtract(a, b: integer): integer;
begin
  Subtract := a - b;
end;

function Multiply(a, b: integer): integer;
begin
  Multiply := a * b;
end;

function Divide(a, b: real): real;
begin
  if b = 0 then
    Divide := 0
  else
    Divide := a / b;
end;

function Power(base: real; exp: integer): real;
var
  i: integer;
  result: real;
begin
  result := 1;
  for i := 1 to abs(exp) do
    result := result * base;
  if exp < 0 then
    result := 1 / result;
  Power := result;
end;

function Factorial(n: integer): longint;
var
  i: integer;
  r: longint;
begin
  r := 1;
  for i := 2 to n do
    r := r * i;
  Factorial := r;
end;

end.
