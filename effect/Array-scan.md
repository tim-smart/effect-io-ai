# scan

Accumulates values from an `Iterable` starting from the left, storing
each intermediate result in an array. Useful for tracking the progression of
a value through a series of transformations.

To import and use `scan` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.scan
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.scan(numbers, 0, (acc, value) => acc + value)
assert.deepStrictEqual(result, [0, 1, 3, 6, 10])

// Explanation:
// This function starts with the initial value (0 in this case)
// and adds each element of the array to this accumulator one by one,
// keeping track of the cumulative sum after each addition.
// Each of these sums is captured in the resulting array.
```

**Signature**

```ts
export declare const scan: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => NonEmptyArray<B>
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): NonEmptyArray<B>
}
```
