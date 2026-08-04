program LibraryCatalog;
{ Mini-project: Small library book catalog }
const
  MAX = 40;
type
  TBook = record
    title: string[50];
    author: string[40];
    year: integer;
    available: boolean;
  end;
var
  books: array[1..MAX] of TBook;
  count, choice, i: integer;
  title: string;
begin
  count := 0;
  repeat
    writeln;
    writeln('=== Library Catalog ===');
    writeln('1. Add book');
    writeln('2. List books');
    writeln('3. Borrow book');
    writeln('4. Return book');
    writeln('5. Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: if count < MAX then
         begin
           Inc(count);
           write('Title : ');
           readln(books[count].title);
           write('Author: ');
           readln(books[count].author);
           write('Year  : ');
           readln(books[count].year);
           books[count].available := true;
           writeln('Book added.');
         end
         else
           writeln('Catalog full.');
      2: for i := 1 to count do
         begin
           write(i, '. ', books[i].title, ' by ', books[i].author, ' (', books[i].year, ') - ');
           if books[i].available then writeln('Available') else writeln('Borrowed');
         end;
      3: begin
           write('Title to borrow: ');
           readln(title);
           for i := 1 to count do
             if (books[i].title = title) and books[i].available then
             begin
               books[i].available := false;
               writeln('Borrowed successfully.');
               break;
             end;
         end;
      4: begin
           write('Title to return: ');
           readln(title);
           for i := 1 to count do
             if (books[i].title = title) and (not books[i].available) then
             begin
               books[i].available := true;
               writeln('Returned successfully.');
               break;
             end;
         end;
    end;
  until choice = 5;
end.
