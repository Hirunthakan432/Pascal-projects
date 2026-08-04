program DemoMinMaxStack;
uses MinMaxStack;
begin
  InitMM;
  PushMM(30); PushMM(10); PushMM(50); PushMM(20);
  writeln('Min so far = ', CurrentMin);
  writeln('Max so far = ', CurrentMax);
  writeln('Pop = ', PopMM);
end.
