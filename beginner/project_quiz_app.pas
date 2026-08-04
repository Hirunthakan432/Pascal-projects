program QuizApp;
{ Mini-project: Simple 5-question multiple choice quiz }
var
  score, answer: integer;
begin
  score := 0;
  writeln('=== Pascal Basics Quiz ===');
  writeln;

  writeln('1. What keyword starts a Pascal program?');
  writeln('   1) start  2) program  3) main  4) begin');
  write('Answer: ');
  readln(answer);
  if answer = 2 then Inc(score);

  writeln('2. Which statement writes a line to the screen?');
  writeln('   1) print  2) echo  3) writeln  4) cout');
  write('Answer: ');
  readln(answer);
  if answer = 3 then Inc(score);

  writeln('3. How do you declare an integer variable x?');
  writeln('   1) int x  2) var x: integer  3) integer x  4) x = int');
  write('Answer: ');
  readln(answer);
  if answer = 2 then Inc(score);

  writeln('4. What is the assignment operator in Pascal?');
  writeln('   1) =  2) :=  3) ==  4) <-');
  write('Answer: ');
  readln(answer);
  if answer = 2 then Inc(score);

  writeln('5. A loop that runs at least once is:');
  writeln('   1) for  2) while  3) repeat-until  4) foreach');
  write('Answer: ');
  readln(answer);
  if answer = 3 then Inc(score);

  writeln;
  writeln('Your score: ', score, ' / 5');
  if score = 5 then writeln('Excellent!')
  else if score >= 3 then writeln('Good job!')
  else writeln('Keep practicing!');
end.
