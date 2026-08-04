program ContactBook;
{ Mini-project: Simple in-memory contact book with menu }
const
  MAX = 50;
type
  TContact = record
    name: string[40];
    phone: string[20];
    email: string[40];
  end;
var
  contacts: array[1..MAX] of TContact;
  count, choice, i: integer;
  searchName: string;
  found: boolean;
begin
  count := 0;
  repeat
    writeln;
    writeln('=== Contact Book ===');
    writeln('1. Add contact');
    writeln('2. List contacts');
    writeln('3. Search by name');
    writeln('4. Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: if count < MAX then
         begin
           Inc(count);
           write('Name : ');
           readln(contacts[count].name);
           write('Phone: ');
           readln(contacts[count].phone);
           write('Email: ');
           readln(contacts[count].email);
           writeln('Contact saved.');
         end
         else
           writeln('Contact book is full.');
      2: if count = 0 then
           writeln('No contacts.')
         else
           for i := 1 to count do
             writeln(i, '. ', contacts[i].name, ' | ', contacts[i].phone, ' | ', contacts[i].email);
      3: begin
           write('Search name: ');
           readln(searchName);
           found := false;
           for i := 1 to count do
             if contacts[i].name = searchName then
             begin
               writeln('Found: ', contacts[i].phone, ' | ', contacts[i].email);
               found := true;
             end;
           if not found then writeln('Not found.');
         end;
    end;
  until choice = 4;
end.
