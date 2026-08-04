program DemoStackUnit;

uses
  StackUnit;

begin
  InitStack;
  Push(10);
  Push(20);
  Push(30);
  ShowStack;
  writeln('Peek = ', Peek);
  writeln('Pop  = ', Pop);
  ShowStack;
  writeln('Pop  = ', Pop);
  writeln('Pop  = ', Pop);
  ShowStack;
end.
