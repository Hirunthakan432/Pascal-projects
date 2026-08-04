program InventorySystem;
{ Mini-project: Product inventory with stock updates }
const
  MAX = 80;
type
  TProduct = record
    code: string[15];
    name: string[40];
    qty: integer;
    price: real;
  end;
var
  products: array[1..MAX] of TProduct;
  count, choice, i, q: integer;
  code: string;
  found: boolean;
begin
  count := 0;
  repeat
    writeln;
    writeln('=== Inventory System ===');
    writeln('1. Add product');
    writeln('2. List products');
    writeln('3. Update stock');
    writeln('4. Search by code');
    writeln('5. Exit');
    write('Choice: ');
    readln(choice);

    case choice of
      1: if count < MAX then
         begin
           Inc(count);
           write('Code : ');
           readln(products[count].code);
           write('Name : ');
           readln(products[count].name);
           write('Qty  : ');
           readln(products[count].qty);
           write('Price: ');
           readln(products[count].price);
           writeln('Product added.');
         end
         else
           writeln('Inventory full.');
      2: for i := 1 to count do
           writeln(products[i].code:12, ' ', products[i].name:25, ' Qty:', products[i].qty:5, ' Price:', products[i].price:8:2);
      3: begin
           write('Product code: ');
           readln(code);
           write('Quantity change (+/-): ');
           readln(q);
           found := false;
           for i := 1 to count do
             if products[i].code = code then
             begin
               products[i].qty := products[i].qty + q;
               if products[i].qty < 0 then products[i].qty := 0;
               writeln('New qty: ', products[i].qty);
               found := true;
               break;
             end;
           if not found then writeln('Product not found.');
         end;
      4: begin
           write('Code: ');
           readln(code);
           found := false;
           for i := 1 to count do
             if products[i].code = code then
             begin
               writeln(products[i].name, ' | Qty: ', products[i].qty, ' | Price: ', products[i].price:0:2);
               found := true;
               break;
             end;
           if not found then writeln('Not found.');
         end;
    end;
  until choice = 5;
end.
