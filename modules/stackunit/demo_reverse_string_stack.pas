program ReverseWithStack;
{ Reverse a string using the stack unit (digits as example) }
uses StackUnit;
var s: string; i: integer; c: char;
begin
  InitStack;
  s := '12345';
  for i := 1 to Length(s) do
    Push(Ord(s[i]));
  write('Reversed: ');
  while not IsEmpty do
  begin
    c := Chr(Pop);
    write(c);
  end;
  writeln;
end.
