Package: `effect`<br />
Module: `Array`<br />

## Array.replicate

Creates a `NonEmptyArray` containing a value repeated `n` times.

- Use when you need multiple copies of the same value.
- `n` is normalized to an integer >= 1 — always returns at least one element.
- Dual: `Array.replicate("a", 3)` or `pipe("a", Array.replicate(3))`.

**Example** (Repeating a value)

```ts
import { Array } from "effect"

const result = Array.replicate("a", 3)
console.log(result) // ["a", "a", "a"]
```

**See**

- `makeBy` — vary values based on index

**Signature**

```ts
declare const replicate: { (n: number): <A>(a: A) => NonEmptyArray<A>; <A>(a: A, n: number): NonEmptyArray<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L310)

Since v2.0.0