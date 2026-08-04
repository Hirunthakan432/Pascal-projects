unit DateUtils;
{ Simple date validation and day-of-year helpers }

interface

function IsLeapYear(year: integer): boolean;
function DaysInMonth(month, year: integer): integer;
function IsValidDate(day, month, year: integer): boolean;
function DayOfYear(day, month, year: integer): integer;

implementation

function IsLeapYear(year: integer): boolean;
begin
  IsLeapYear := ((year mod 4 = 0) and (year mod 100 <> 0)) or (year mod 400 = 0);
end;

function DaysInMonth(month, year: integer): integer;
begin
  case month of
    1, 3, 5, 7, 8, 10, 12: DaysInMonth := 31;
    4, 6, 9, 11: DaysInMonth := 30;
    2: if IsLeapYear(year) then
         DaysInMonth := 29
       else
         DaysInMonth := 28;
  else
    DaysInMonth := 0;
  end;
end;

function IsValidDate(day, month, year: integer): boolean;
begin
  IsValidDate := (year > 0) and (month >= 1) and (month <= 12) and
                 (day >= 1) and (day <= DaysInMonth(month, year));
end;

function DayOfYear(day, month, year: integer): integer;
var
  i, total: integer;
begin
  total := day;
  for i := 1 to month - 1 do
    total := total + DaysInMonth(i, year);
  DayOfYear := total;
end;

end.
