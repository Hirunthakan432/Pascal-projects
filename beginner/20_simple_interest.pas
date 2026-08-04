program SimpleInterest;
var
  principal, rate, time, interest: real;
begin
  write('Principal: ');
  readln(principal);
  write('Rate (%): ');
  readln(rate);
  write('Time (years): ');
  readln(time);
  interest := (principal * rate * time) / 100;
  writeln('Simple Interest = ', interest:0:2);
  writeln('Total amount   = ', (principal + interest):0:2);
end.
