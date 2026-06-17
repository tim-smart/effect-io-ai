Package: `effect`<br />
Module: `Array`<br />

## Array.reduceRight

Folds an iterable from right to left into a single value.

**When to use**

Use when you need to fold values from right to left.

**Details**

The function receives `(accumulator, element, index)`.

**Example** (Folding from right to left)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3927)

Since v2.0.0