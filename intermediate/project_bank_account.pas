program BankAccount;
{ Mini-project: Single bank account with deposit, withdraw, balance }
var
  balance: real;
  choice: integer;
  amount: real;
begin
  balance := 0;
  writeln('=== Simple Bank Account ===');

  repeat
    writeln;
    writeln('1. Deposit');
    writeln('2. Withdraw');
    writeln('3. Check balance');
    writeln('4. Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: begin
           write('Amount to deposit: ');
           readln(amount);
           if amount > 0 then
           begin
             balance := balance + amount;
             writeln('Deposited. New balance: ', balance:0:2);
           end
           else
             writeln('Invalid amount.');
         end;
      2: begin
           write('Amount to withdraw: ');
           readln(amount);
           if (amount > 0) and (amount <= balance) then
           begin
             balance := balance - amount;
             writeln('Withdrawn. New balance: ', balance:0:2);
           end
           else
             writeln('Insufficient funds or invalid amount.');
         end;
      3: writeln('Current balance: ', balance:0:2);
    end;
  until choice = 4;
  writeln('Thank you for banking with us.');
end.
