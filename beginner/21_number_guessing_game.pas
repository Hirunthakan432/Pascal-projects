program NumberGuessingGame;
{ Mini-project: Guess the secret number with limited attempts }
var
  secret, guess, attempts, maxAttempts: integer;
begin
  Randomize;
  secret := Random(100) + 1;
  maxAttempts := 7;
  attempts := 0;

  writeln('=== Number Guessing Game ===');
  writeln('I picked a number between 1 and 100.');
  writeln('You have ', maxAttempts, ' attempts.');
  writeln;

  while attempts < maxAttempts do
  begin
    write('Guess: ');
    readln(guess);
    Inc(attempts);

    if guess = secret then
    begin
      writeln('Correct! You won in ', attempts, ' attempt(s).');
      halt;
    end
    else if guess < secret then
      writeln('Too low. Attempts left: ', maxAttempts - attempts)
    else
      writeln('Too high. Attempts left: ', maxAttempts - attempts);
  end;

  writeln('Out of attempts! The number was ', secret, '.');
end.
