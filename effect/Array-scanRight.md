Package: `effect`<br />
Module: `Array`<br />

## Array.scanRight

Folds right-to-left while keeping every intermediate accumulator value.

**When to use**

Use to compute a running accumulator from right to left where each intermediate
value is needed.

**Details**

The output length is `input.length + 1` because it ends with the initial
value. The result is always a `NonEmptyArray`.

**Example** (Scanning running totals in reverse)

```ts
import { Array } from "effect"

const result = Array.scanRight([1, 2, 3, 4], 0, (acc, value) => acc + value)
console.log(result) // [10, 9, 7, 4, 0]
```

**See**

- `scan` — left-to-right scan
- `reduceRight` — fold without intermediate values

**Signature**

```ts
declare const scanRight: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => NonEmptyArray<B>; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): NonEmptyArray<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L757)

Since v2.0.0