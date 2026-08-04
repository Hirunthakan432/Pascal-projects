# Modules (Units) in Pascal

Each subfolder is a self-contained topic with a core **unit** plus multiple **demo** and helper programs (~10 files each).

```
modules/
  mathutils/      - arithmetic, power, factorial, GCD, primes
  stringutils/    - reverse, palindrome, trim, word count, replace
  arrayutils/     - fill, sort, search, reverse
  dateutils/      - leap year, validation, day-of-year, age
  stackunit/      - stack ops, parentheses, two-stacks
  queueunit/      - circular queue, priority queue, deque
  geometry/       - circle, rectangle, triangle, sphere, Heron
  fileutils/      - write, read, copy, append
  statistics/     - mean, variance, median, mode, range
  conversion/     - temp, length, weight, speed, area
  complex/        - add, mul, div, conjugate, powers of i
```

## How units work

```pascal
unit MyUnit;

interface
  // public declarations

implementation
  // private code

end.
```

A program imports a unit with:

```pascal
uses MyUnit;
```

## Compilation

From inside a module folder:

```bash
cd modules/mathutils
fpc mathutils.pas
fpc demo_mathutils.pas
./demo_mathutils
```

Compile any extra units the demo depends on first (e.g. `gcd_helper.pas` before `demo_gcd.pas`).
