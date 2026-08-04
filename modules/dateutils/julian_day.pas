unit JulianDay;
{ Approximate day number since a fixed epoch (simplified) }
interface
uses DateUtils;
function DayNumber(day, month, year: integer): longint;
implementation
function DayNumber(day, month, year: integer): longint;
var y, m: integer; dn: longint;
begin
  dn := 0;
  for y := 1 to year - 1 do
    if IsLeapYear(y) then dn := dn + 366 else dn := dn + 365;
  dn := dn + DayOfYear(day, month, year);
  DayNumber := dn;
end;
end.
