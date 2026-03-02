Package: `effect`<br />
Module: `Array`<br />

## Array.makeBy

Creates a `NonEmptyArray` of length `n` where element `i` is computed by `f(i)`.

- Use when you need an array whose values depend on the index.
- `n` is normalized to an integer >= 1 — always returns at least one element.
- Dual: `Array.makeBy(5, f)` or `pipe(5, Array.makeBy(f))`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L252)

Since v2.0.0