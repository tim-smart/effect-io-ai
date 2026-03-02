Package: `effect`<br />
Module: `Array`<br />

## Array.reduce

Folds an iterable from left to right into a single value.

- The function receives `(accumulator, element, index)`.

**Example** (Summing an array)

```ts
import { Array } from "effect"

console.log(Array.reduce([1, 2, 3], 0, (acc, n) => acc + n)) // 6
```

**See**

- `reduceRight` — fold from right to left
- `scan` — fold keeping intermediate values

**Signature**

```ts
declare const reduce: { <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Iterable<A>) => B; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A, i: number) => B): B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3407)

Since v2.0.0