Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.evolve

Transforms elements of a tuple by providing an array of transform functions.
Each function applies to the element at the same position. Positions beyond
the array's length are copied unchanged.

- Use when you want to update the first N elements while keeping the rest.
- Does not mutate the input; returns a fresh tuple.
- Each transform function receives the current value and can return a
  different type.

**Example** (Transforming selected elements)

```ts
import { pipe, Tuple } from "effect"

const result = pipe(
  Tuple.make("hello", 42, true),
  Tuple.evolve([
    (s) => s.toUpperCase(),
    (n) => n * 2
  ])
)
console.log(result) // ["HELLO", 84, true]
```

**See**

- `map` – apply the same transformation to all elements
- `renameIndices` – swap element positions

**Signature**

```ts
declare const evolve: { <const T extends ReadonlyArray<unknown>, const E extends Evolver<T>>(evolver: E): (self: T) => Evolved<T, E>; <const T extends ReadonlyArray<unknown>, const E extends Evolver<T>>(self: T, evolver: E): Evolved<T, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L324)

Since v4.0.0