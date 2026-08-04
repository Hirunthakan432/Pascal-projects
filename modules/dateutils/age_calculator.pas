unit AgeCalculator;
interface
uses DateUtils;
function AgeInYears(bDay, bMonth, bYear, cDay, cMonth, cYear: integer): integer;
implementation
function AgeInYears(bDay, bMonth, bYear, cDay, cMonth, cYear: integer): integer;
var age: integer;
begin
  age := cYear - bYear;
  if (cMonth < bMonth) or ((cMonth = bMonth) and (cDay < bDay)) then
    Dec(age);
  AgeInYears := age;
end;
end.
