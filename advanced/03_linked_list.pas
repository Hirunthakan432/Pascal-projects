program LinkedListDemo;

type
  PNode = ^TNode;
  TNode = record
    data: integer;
    next: PNode;
  end;

var
  head, current, newNode: PNode;
  i, value: integer;

begin
  head := nil;

  writeln('Creating a linked list with 5 nodes...');
  for i := 1 to 5 do
  begin
    new(newNode);
    newNode^.data := i * 10;
    newNode^.next := head;
    head := newNode;
  end;

  writeln('List contents (head to tail):');
  current := head;
  while current <> nil do
  begin
    write(current^.data, ' -> ');
    current := current^.next;
  end;
  writeln('nil');

  { Free the list }
  while head <> nil do
  begin
    current := head;
    head := head^.next;
    dispose(current);
  end;
  writeln('List memory freed.');
end.
