unit BinarySearchUnit;
interface
uses ArrayUtils;
function BinarySearch(const a: TIntArray; n, target: integer): integer;
implementation
function BinarySearch(const a: TIntArray; n, target: integer): integer;
var low, high, mid: integer;
begin
  low := 1; high := n;
  while low <= high do
  begin
    mid := (low + high) div 2;
    if a[mid] = target then begin BinarySearch := mid; exit; end
    else if a[mid] < target then low := mid + 1
    else high := mid - 1;
  end;
  BinarySearch := 0;
end;
end.
