program BalancedParens;
{ Check balanced parentheses using stack (simplified) }
uses StackUnit;
var s: string; i: integer; ok: boolean; ch: char;
begin
  InitStack;
  write('Enter expression: ');
  readln(s);
  ok := true;
  for i := 1 to Length(s) do
  begin
    ch := s[i];
    if ch = '(' then Push(1)
    else if ch = ')' then
    begin
      if IsEmpty then begin ok := false; break; end
      else Pop;
    end;
  end;
  if ok and IsEmpty then writeln('Balanced') else writeln('Not balanced');
end.
