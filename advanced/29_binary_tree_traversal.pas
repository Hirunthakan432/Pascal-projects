program BinaryTreeTraversal;
type PNode=^Node; Node=record value: integer; left,right:PNode; end;
procedure Insert(var root:PNode; x:integer); begin if root=nil then begin new(root); root^.value:=x; root^.left:=nil; root^.right:=nil; end else if x<root^.value then Insert(root^.left,x) else Insert(root^.right,x); end;
procedure InOrder(root:PNode); begin if root<>nil then begin InOrder(root^.left); write(root^.value,' '); InOrder(root^.right); end; end;
var root:PNode; i:integer;
begin root:=nil; for i:=1 to 7 do Insert(root,i*3 mod 11); writeln('In-order:'); InOrder(root); writeln; end.
