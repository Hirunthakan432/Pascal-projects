program NumberGuessing;
{ Simple while-loop example: guess a fixed number }
var
  secret, guess, attempts: integer;
begin
  secret := 42;          { fixed secret for teaching }
  attempts := 0;
  writeln('Guess the secret number (1-100)!');

  while true do
  begin
    write('Your guess: ');
    readln(guess);
    attempts := attempts + 1;

    if guess = secret then
    begin
      writeln('Correct! You needed ', attempts, ' attempt(s).');
      break;
    end
    else if guess < secret then
      writeln('Too low!')
    else
      writeln('Too high!');
  end;
end.
