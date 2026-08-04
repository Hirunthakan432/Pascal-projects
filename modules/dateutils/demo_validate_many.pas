program ValidateManyDates;
uses DateUtils;
const
  tests: array[1..5, 1..3] of integer = (
    (29, 2, 2024), (29, 2, 2023), (31, 4, 2025),
    (15, 6, 2026), (0, 1, 2020)
  );
var i: integer;
begin
  for i := 1 to 5 do
  begin
    write(tests[i,1], '/', tests[i,2], '/', tests[i,3], ' -> ');
    if IsValidDate(tests[i,1], tests[i,2], tests[i,3]) then
      writeln('valid')
    else
      writeln('invalid');
  end;
end.
