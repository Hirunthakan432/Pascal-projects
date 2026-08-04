program DemoTwoStacks;
uses TwoStacks;
begin
  InitTwo;
  Push1(1); Push1(2); Push2(9); Push2(8);
  writeln('Pop1 = ', Pop1, ', Pop2 = ', Pop2);
end.
