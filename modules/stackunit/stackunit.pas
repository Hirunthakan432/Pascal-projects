unit StackUnit;
{ Stack implemented as a unit (array-based) }

interface

const
  STACK_MAX = 50;

procedure InitStack;
function IsEmpty: boolean;
function IsFull: boolean;
procedure Push(value: integer);
function Pop: integer;
function Peek: integer;
procedure ShowStack;

implementation

var
  data: array[1..STACK_MAX] of integer;
  top: integer;

procedure InitStack;
begin
  top := 0;
end;

function IsEmpty: boolean;
begin
  IsEmpty := top = 0;
end;

function IsFull: boolean;
begin
  IsFull := top = STACK_MAX;
end;

procedure Push(value: integer);
begin
  if IsFull then
    writeln('Stack overflow')
  else
  begin
    Inc(top);
    data[top] := value;
  end;
end;

function Pop: integer;
begin
  if IsEmpty then
  begin
    writeln('Stack underflow');
    Pop := -1;
  end
  else
  begin
    Pop := data[top];
    Dec(top);
  end;
end;

function Peek: integer;
begin
  if IsEmpty then
    Peek := -1
  else
    Peek := data[top];
end;

procedure ShowStack;
var
  i: integer;
begin
  if IsEmpty then
    writeln('(empty)')
  else
  begin
    write('Stack: ');
    for i := top downto 1 do
      write(data[i], ' ');
    writeln;
  end;
end;

end.
