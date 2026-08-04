program ExpenseTracker;
{ Mini-project: Track daily expenses and show total }
const
  MAX = 50;
type
  TExpense = record
    desc: string[40];
    amount: real;
  end;
var
  items: array[1..MAX] of TExpense;
  count, choice, i: integer;
  total: real;
begin
  count := 0;
  repeat
    writeln;
    writeln('=== Expense Tracker ===');
    writeln('1. Add expense');
    writeln('2. List expenses');
    writeln('3. Show total');
    writeln('4. Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: if count < MAX then
         begin
           Inc(count);
           write('Description: ');
           readln(items[count].desc);
           write('Amount: ');
           readln(items[count].amount);
           writeln('Saved.');
         end
         else
           writeln('List full.');
      2: begin
           total := 0;
           for i := 1 to count do
           begin
             writeln(i, '. ', items[i].desc, ' - ', items[i].amount:0:2);
             total := total + items[i].amount;
           end;
           if count = 0 then writeln('No expenses yet.');
         end;
      3: begin
           total := 0;
           for i := 1 to count do
             total := total + items[i].amount;
           writeln('Total expenses: ', total:0:2);
         end;
    end;
  until choice = 4;
end.
