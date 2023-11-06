# Smolfuck 😈💻

**Implementing Smallfuck** :: the quirky cousin of Brainfuck that's all about bits and flips.

## What's Smallfuck?

It's an [esoteric programming language](https://esolangs.org/wiki/Main_Page), known for being delightfully odd. 

> It is a sized-down version of Brainfuck that operates only on bits, has limited data storage, and does not define input or output.
> - https://esolangs.org/wiki/Smallfuck

The commands looks like this:
```
> Move pointer right
< Move pointer left
* Flip current cell
[ Jump past matching ] if cell under pointer is 0
] Jump back to matching [
```

## Core principles

- **No unnecessary dependencies** :: Pure Haskell with `Prelude` and `Data.Char`.
- **Keepin' it simple** :: No convolluted dependencies and high-level abstractions.

## Features

- [x] Move the tape around
- [x] Flip the bits
- [ ] Jump past/back operations
- [ ] Some tests and examples
