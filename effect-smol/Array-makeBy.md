Package: `effect`<br />
Module: `Array`<br />

## Array.makeBy

Creates a `NonEmptyArray` of length `n` where element `i` is computed by `f(i)`.

**When to use**

Use when you need to compute each array element from its index.

**Details**

`n` is normalized to an integer greater than or equal to 1, so this function
always returns at least one element. Supports both data-first and data-last
usage.

**Example** (Generating values from indices)

```ts
import { Array } from "effect"

const result = Array.makeBy(5, (n) => n * 2)
console.log(result) // [0, 2, 4, 6, 8]
```

**See**

- `range` — create a range of integers
- `replicate` — repeat a single value

**Signature**

```ts
declare const makeBy: { <A>(f: (i: number) => A): (n: number) => NonEmptyArray<A>; <A>(n: number, f: (i: number) => A): NonEmptyArray<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L278)

Since v2.0.0