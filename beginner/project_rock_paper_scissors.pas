program RockPaperScissors;
{ Mini-project: Play Rock-Paper-Scissors against the computer }
var
  user, comp, uScore, cScore, round: integer;
  again: char;
begin
  uScore := 0; cScore := 0;
  Randomize;
  writeln('=== Rock Paper Scissors ===');
  writeln('1 = Rock, 2 = Paper, 3 = Scissors');

  repeat
    write('Your choice (1-3): ');
    readln(user);
    comp := Random(3) + 1;
    writeln('Computer chose: ', comp);

    if user = comp then
      writeln('Draw!')
    else if ((user = 1) and (comp = 3)) or
            ((user = 2) and (comp = 1)) or
            ((user = 3) and (comp = 2)) then
    begin
      writeln('You win this round!');
      Inc(uScore);
    end
    else
    begin
      writeln('Computer wins this round!');
      Inc(cScore);
    end;

    writeln('Score -> You: ', uScore, '  Computer: ', cScore);
    write('Play again (Y/N)? ');
    readln(again);
  until (again = 'N') or (again = 'n');

  writeln('Final score -> You: ', uScore, '  Computer: ', cScore);
end.
