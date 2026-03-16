Package: `effect`<br />
Module: `Array`<br />

## Array.reduceRight

Folds an iterable from right to left into a single value.

- The function receives `(accumulator, element, index)`.

**Example** (Right-to-left fold)

```ts
import { Array } from "effect"

console.log(Array.reduceRight([1, 2, 3], 0, (acc, n) => acc + n)) // 6
```

**See**

- `reduce` — fold from left to right
- `scanRight` — fold keeping intermediate values

**Signature**

```ts
declare const reduceRight: { <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Iterable<A>) => B; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A, i: number) => B): B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3438)

Since v2.0.0