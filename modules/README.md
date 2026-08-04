# Modules (Units) in Pascal

This folder demonstrates Pascal **units** (modules).

In Free Pascal / Delphi a unit is a reusable module that can contain:
- constants
- types
- variables
- procedures and functions

A typical unit looks like:

```pascal
unit MyUnit;

interface
  // public declarations

implementation
  // private code and implementations

end.
```

Programs use units with the `uses` clause.

## How to compile

```bash
# Compile a unit (produces .ppu / .o)
fpc mathutils.pas

# Then compile a program that uses it
fpc demo_math.pas
./demo_math
```

Most examples here are self-contained (unit + small demo in the same file) or paired.
