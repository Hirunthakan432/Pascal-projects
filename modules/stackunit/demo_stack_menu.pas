program StackMenu;
uses StackUnit;
var choice, val: integer;
begin
  InitStack;
  repeat
    writeln; writeln('1.Push 2.Pop 3.Peek 4.Show 5.Exit');
    write('Choice: '); readln(choice);
    case choice of
      1: begin write('Value: '); readln(val); Push(val); end;
      2: begin val := Pop; if val <> -1 then writeln('Popped ', val); end;
      3: writeln('Top = ', Peek);
      4: ShowStack;
    end;
  until choice = 5;
end.
