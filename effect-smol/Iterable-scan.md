Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.scan

Reduce an `Iterable` from the left, keeping all intermediate results instead of only the final result.

**Example**

```ts
import { Iterable } from "effect"

// Running sum of numbers
const numbers = [1, 2, 3, 4, 5]
const runningSum = Iterable.scan(numbers, 0, (acc, n) => acc + n)
console.log(Array.from(runningSum)) // [0, 1, 3, 6, 10, 15]

// Build strings progressively
const letters = ["a", "b", "c"]
const progressive = Iterable.scan(letters, "", (acc, letter) => acc + letter)
console.log(Array.from(progressive)) // ["", "a", "ab", "abc"]

// Track maximum values seen so far
const values = [3, 1, 4, 1, 5, 9, 2]
const runningMax = Iterable.scan(values, -Infinity, Math.max)
console.log(Array.from(runningMax)) // [-Infinity, 3, 3, 4, 4, 5, 9, 9]
```

**Signature**

```ts
declare const scan: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => Iterable<B>; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L344)

Since v2.0.0