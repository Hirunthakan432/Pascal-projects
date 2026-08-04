program BinaryTreeDemo;
{ Simple binary tree with recursive traversals }

type
  PNode = ^TNode;
  TNode = record
    data: integer;
    left, right: PNode;
  end;

var
  root: PNode;

function NewNode(value: integer): PNode;
var
  n: PNode;
begin
  new(n);
  n^.data := value;
  n^.left := nil;
  n^.right := nil;
  NewNode := n;
end;

procedure InOrder(node: PNode);
begin
  if node <> nil then
  begin
    InOrder(node^.left);
    write(node^.data, ' ');
    InOrder(node^.right);
  end;
end;

procedure PreOrder(node: PNode);
begin
  if node <> nil then
  begin
    write(node^.data, ' ');
    PreOrder(node^.left);
    PreOrder(node^.right);
  end;
end;

procedure PostOrder(node: PNode);
begin
  if node <> nil then
  begin
    PostOrder(node^.left);
    PostOrder(node^.right);
    write(node^.data, ' ');
  end;
end;

procedure FreeTree(node: PNode);
begin
  if node <> nil then
  begin
    FreeTree(node^.left);
    FreeTree(node^.right);
    dispose(node);
  end;
end;

begin
  { Manually build a small tree:
           4
         /   \
        2     6
       / \   / \
      1   3 5   7
  }
  root := NewNode(4);
  root^.left := NewNode(2);
  root^.right := NewNode(6);
  root^.left^.left := NewNode(1);
  root^.left^.right := NewNode(3);
  root^.right^.left := NewNode(5);
  root^.right^.right := NewNode(7);

  write('In-order  : ');
  InOrder(root);
  writeln;

  write('Pre-order : ');
  PreOrder(root);
  writeln;

  write('Post-order: ');
  PostOrder(root);
  writeln;

  FreeTree(root);
  writeln('Tree memory released.');
end.
