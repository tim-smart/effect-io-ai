Package: `effect`<br />
Module: `Array`<br />

## Array.replicate

Creates a `NonEmptyArray` containing a value repeated `n` times.

**When to use**

Use when you need a non-empty array containing repeated copies of one value.

**Details**

`n` is normalized to an integer greater than or equal to 1, so this function
always returns at least one element. Supports both data-first and data-last
usage.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L271)

Since v2.0.0