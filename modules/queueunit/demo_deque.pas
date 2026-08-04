program DemoDeque;
uses DequeUnit;
begin
  InitDeque;
  PushBack(1); PushBack(2); PushFront(0); PushBack(3);
  ShowDeque;
  writeln('PopFront = ', PopFront);
  writeln('PopBack  = ', PopBack);
  ShowDeque;
end.
