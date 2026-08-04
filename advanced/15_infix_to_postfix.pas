program InfixToPostfix;
{ Simple infix to postfix for single-digit operands and + - * / ( ) }
const
  MAX = 100;
var
  stack: array[1..MAX] of char;
  top: integer;
  expr, postfix: string;
  i: integer;
  ch: char;

procedure Push(c: char);
begin
  Inc(top);
  stack[top] := c;
end;

function Pop: char;
begin
  Pop := stack[top];
  Dec(top);
end;

function Peek: char;
begin
  if top = 0 then Peek := #0 else Peek := stack[top];
end;

function Prec(c: char): integer;
begin
  case c of
    '+', '-': Prec := 1;
    '*', '/': Prec := 2;
  else
    Prec := 0;
  end;
end;

begin
  top := 0;
  postfix := '';
  write('Infix expression (e.g. 3+(2*4)): ');
  readln(expr);
  for i := 1 to Length(expr) do
  begin
    ch := expr[i];
    if ch in ['0'..'9'] then
      postfix := postfix + ch
    else if ch = '(' then
      Push(ch)
    else if ch = ')' then
    begin
      while (top > 0) and (Peek <> '(') do
        postfix := postfix + Pop;
      if top > 0 then Pop; { discard '(' }
    end
    else if ch in ['+', '-', '*', '/'] then
    begin
      while (top > 0) and (Prec(Peek) >= Prec(ch)) do
        postfix := postfix + Pop;
      Push(ch);
    end;
  end;
  while top > 0 do
    postfix := postfix + Pop;
  writeln('Postfix: ', postfix);
end.
