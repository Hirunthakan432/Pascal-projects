program SimpleTextEditor;
{ Mini-project: Tiny line-based text editor (in memory) }
const
  MAX_LINES = 100;
var
  lines: array[1..MAX_LINES] of string;
  count, choice, i, num: integer;
  text: string;
  f: text;
  filename: string;
begin
  count := 0;
  repeat
    writeln;
    writeln('=== Simple Text Editor ===');
    writeln('1. Insert line');
    writeln('2. Show text');
    writeln('3. Delete line');
    writeln('4. Save to file');
    writeln('5. Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: if count < MAX_LINES then
         begin
           write('Line text: ');
           readln(text);
           Inc(count);
           lines[count] := text;
         end
         else
           writeln('Buffer full.');
      2: for i := 1 to count do
           writeln(i:3, '| ', lines[i]);
      3: begin
           write('Line number to delete: ');
           readln(num);
           if (num >= 1) and (num <= count) then
           begin
             for i := num to count - 1 do
               lines[i] := lines[i + 1];
             Dec(count);
             writeln('Deleted.');
           end
           else
             writeln('Invalid line.');
         end;
      4: begin
           write('Filename: ');
           readln(filename);
           assign(f, filename);
           rewrite(f);
           for i := 1 to count do
             writeln(f, lines[i]);
           close(f);
           writeln('Saved.');
         end;
    end;
  until choice = 5;
end.
