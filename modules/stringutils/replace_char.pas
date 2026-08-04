unit ReplaceChar;
interface
function ReplaceAll(const s: string; oldc, newc: char): string;
implementation
function ReplaceAll(const s: string; oldc, newc: char): string;
var i: integer; r: string;
begin
  r := s;
  for i := 1 to Length(r) do
    if r[i] = oldc then r[i] := newc;
  ReplaceAll := r;
end;
end.
