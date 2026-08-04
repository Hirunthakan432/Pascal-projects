program ExpressionEvaluator;
{ Mini-project: Evaluate simple postfix expressions with integers }
const
  MAX = 50;
var
  stack: array[1..MAX] of longint;
  top: integer;
  expr, token: string;
  i, start: integer;
  a, b, val: longint;
  ch: char;

procedure Push(v: longint);
begin
  Inc(top);
  stack[top] := v;
end;

function Pop: longint;
begin
  Pop := stack[top];
  Dec(top);
end;

begin
  top := 0;
  writeln('=== Postfix Expression Evaluator ===');
  writeln('Enter postfix expression (tokens separated by spaces)');
  writeln('Example: 3 4 + 2 *');
  write('Expression: ');
  readln(expr);
  expr := expr + ' ';

  i := 1;
  while i <= Length(expr) do
  begin
    while (i <= Length(expr)) and (expr[i] = ' ') do Inc(i);
    if i > Length(expr) then break;
    start := i;
    while (i <= Length(expr)) and (expr[i] <> ' ') do Inc(i);
    token := Copy(expr, start, i - start);

    if (Length(token) = 1) and (token[1] in ['+', '-', '*', '/']) then
    begin
      b := Pop; a := Pop;
      case token[1] of
        '+': Push(a + b);
        '-': Push(a - b);
        '*': Push(a * b);
        '/': if b <> 0 then Push(a div b) else begin writeln('Division by zero'); halt; end;
      end;
    end
    else
    begin
      val := 0;
      for ch in token do
        if ch in ['0'..'9'] then
          val := val * 10 + (Ord(ch) - Ord('0'));
      Push(val);
    end;
  end;

  if top = 1 then
    writeln('Result = ', Pop)
  else
    writeln('Invalid expression.');
end.
