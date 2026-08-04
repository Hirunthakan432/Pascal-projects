# Teaching Notes for Pascal-projects

This repository is organised to support progressive learning of Pascal.

## Suggested Learning Path

### Beginner (files 01-10)
1. `01_hello_world.pas` - program structure, writeln
2. `02_variables_and_input.pas` - variables, readln
3. `03_simple_calculator.pas` - case statement, basic arithmetic
4. `04_even_odd.pas` - if-then-else, mod operator
5. `05_for_loop_sum.pas` - for loop
6. `06_while_loop_guess.pas` - while loop, break
7. `07_repeat_until_menu.pas` - repeat-until, menus
8. `08_temperature_converter.pas` - real numbers, simple formulas
9. `09_multiplication_table.pas` - nested loops
10. `10_string_basics.pas` - string length, copy, pos

### Intermediate (files 01-09)
- Arrays and searching
- Procedures & functions (including `var` parameters)
- Records
- File handling
- 2-D arrays / matrices
- Character counting / frequency tables

### Advanced (files 01-10)
- Classic algorithms: binary search, bubble sort, quicksort
- Data structures: linked list, stack, queue, binary tree
- Recursion (Fibonacci, tree traversals)
- Number theory helpers (GCD / LCM)

## Compilation Tips

```bash
fpc filename.pas
./filename
```

Free Pascal and Lazarus are recommended for modern systems.
Most examples use only standard Pascal features and should also work with Delphi.

## Classroom Ideas
- Ask students to modify the guessing game to pick a random number.
- Extend the student records program to sort by marks.
- Implement a menu-driven version of the stack/queue demos.
- Compare iterative vs recursive Fibonacci performance.
