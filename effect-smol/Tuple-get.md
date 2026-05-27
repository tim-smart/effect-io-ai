Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.get

Retrieves the element at the specified index from a tuple.

**When to use**

Use when you use this in a pipeline when you need to extract a single element.

**Details**

The index is constrained to valid tuple positions at the type level, and the
input tuple is not mutated.

**Example** (Extracting an element by index)

```ts
import { pipe, Tuple } from "effect"

const last = pipe(Tuple.make(1, true, "hello"), Tuple.get(2))
console.log(last) // "hello"
```

**See**

- `make` – create a tuple
- `pick` – extract multiple elements into a new tuple

**Signature**

```ts
declare const get: { <const T extends ReadonlyArray<unknown>, I extends Indices<T> & keyof T>(index: I): (self: T) => T[I]; <const T extends ReadonlyArray<unknown>, I extends Indices<T> & keyof T>(self: T, index: I): T[I]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L135)

Since v4.0.0