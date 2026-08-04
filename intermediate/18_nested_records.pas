program NestedRecords;
type
  TAddress = record
    city: string[30];
    pin: integer;
  end;
  TPerson = record
    name: string[40];
    age: integer;
    addr: TAddress;
  end;
var
  p: TPerson;
begin
  write('Name: ');
  readln(p.name);
  write('Age: ');
  readln(p.age);
  write('City: ');
  readln(p.addr.city);
  write('PIN: ');
  readln(p.addr.pin);
  writeln;
  writeln(p.name, ', ', p.age, ' years');
  writeln(p.addr.city, ' - ', p.addr.pin);
end.
