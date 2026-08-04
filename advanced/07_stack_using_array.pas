program ArrayStack;
{ Stack implemented with a static array }
const
  MAX = 50;

var
  stack: array[1..MAX] of integer;
  top: integer;

procedure Init;
begin
  top := 0;
end;

function IsEmpty: boolean;
begin
  IsEmpty := top = 0;
end;

function IsFull: boolean;
begin
  IsFull := top = MAX;
end;

procedure Push(value: integer);
begin
  if IsFull then
    writeln('Stack overflow!')
  else
  begin
    top := top + 1;
    stack[top] := value;
  end;
end;

function Pop: integer;
begin
  if IsEmpty then
  begin
    writeln('Stack underflow!');
    Pop := -1;   { error sentinel }
  end
  else
  begin
    Pop := stack[top];
    top := top - 1;
  end;
end;

procedure Display;
var
  i: integer;
begin
  if IsEmpty then
    writeln('Stack is empty')
  else
  begin
    write('Stack (top -> bottom): ');
    for i := top downto 1 do
      write(stack[i], ' ');
    writeln;
  end;
end;

var
  choice, val: integer;
begin
  Init;
  repeat
    writeln;
    writeln('1.Push  2.Pop  3.Display  4.Exit');
    write('Choice: ');
    readln(choice);
    case choice of
      1: begin
           write('Value: ');
           readln(val);
           Push(val);
         end;
      2: begin
           val := Pop;
           if val <> -1 then
             writeln('Popped: ', val);
         end;
      3: Display;
    end;
  until choice = 4;
end.
