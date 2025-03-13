Package: `effect`<br />
Module: `Array`<br />

## Array.scan

Accumulates values from an `Iterable` starting from the left, storing
each intermediate result in an array. Useful for tracking the progression of
a value through a series of transformations.

**Example**

```ts
import { Array } from "effect";

const result = Array.scan([1, 2, 3, 4], 0, (acc, value) => acc + value)
console.log(result) // [0, 1, 3, 6, 10]

// Explanation:
// This function starts with the initial value (0 in this case)
// and adds each element of the array to this accumulator one by one,
// keeping track of the cumulative sum after each addition.
// Each of these sums is captured in the resulting array.
```

**Signature**

```ts
declare const scan: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => NonEmptyArray<B>; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): NonEmptyArray<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L459)

Since v2.0.0