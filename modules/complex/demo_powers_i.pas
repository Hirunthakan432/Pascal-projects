program PowersOfI;
{ Powers of the imaginary unit i }
uses ComplexNumbers;
var z, result: TComplex; n, k: integer;
begin
  z.re := 0; z.im := 1;  { i }
  result.re := 1; result.im := 0;
  for n := 0 to 8 do
  begin
    write('i^', n, ' = '); CPrint(result); writeln;
    result := CMul(result, z);
  end;
end.
