unit WordCount;
interface
function CountWords(const s: string): integer;
implementation
function CountWords(const s: string): integer;
var i, cnt: integer; inWord: boolean;
begin
  cnt := 0; inWord := false;
  for i := 1 to Length(s) do
  begin
    if s[i] <> ' ' then
    begin
      if not inWord then begin Inc(cnt); inWord := true; end;
    end
    else
      inWord := false;
  end;
  CountWords := cnt;
end;
end.
