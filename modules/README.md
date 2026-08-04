# Modules (Units) in Pascal

Each subfolder contains one reusable **unit** and a small **demo program** that uses it.

```
modules/
  mathutils/      - basic arithmetic helpers
  stringutils/    - string operations
  arrayutils/     - array helpers + sort
  dateutils/      - date validation & day-of-year
  stackunit/      - stack data structure
  queueunit/      - circular queue
  geometry/       - 2D geometry formulas
  fileutils/      - simple text-file helpers
  statistics/     - mean, variance, median
  conversion/     - unit conversions
  complex/        - complex number arithmetic
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

From inside a module folder (example):

```bash
cd modules/mathutils
fpc mathutils.pas          # compile the unit
fpc demo_mathutils.pas     # compile the demo
./demo_mathutils
```

Or from the repo root, giving the path to the unit so the compiler finds it.
