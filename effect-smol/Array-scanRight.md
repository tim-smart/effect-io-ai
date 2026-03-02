Package: `effect`<br />
Module: `Array`<br />

## Array.scanRight

Right-to-left fold that keeps every intermediate accumulator value.

- The output length is `input.length + 1` (ends with the initial value).
- Always returns a `NonEmptyArray`.

**Example** (Reverse running totals)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L725)

Since v2.0.0