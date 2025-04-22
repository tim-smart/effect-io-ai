Package: `effect`<br />
Module: `Number`<br />

## Number.sumAll

Computes the sum of all elements in an iterable collection of numbers.

**Example**

```ts
import * as assert from "node:assert/strict"
import * as Number from "effect/Number"

// Basic sums
assert.equal(Number.sumAll([2, 3, 4]), 9) // 2 + 3 + 4 = 9
assert.equal(Number.sumAll([1.1, 2.2, 3.3]), 6.6) // 1.1 + 2.2 + 3.3 = 6.6

// Empty collection returns the additive identity (0)
assert.equal(Number.sumAll([]), 0)

// Single element collection
assert.equal(Number.sumAll([42]), 42)

// Sums with negative numbers
assert.equal(Number.sumAll([2, -3, 4]), 3) // 2 + (-3) + 4 = 3
assert.equal(Number.sumAll([-2, -3, -4]), -9) // (-2) + (-3) + (-4) = -9

// Works with any iterable
assert.equal(Number.sumAll(new Set([2, 3, 4])), 9)

// Using with generated sequences
function* range(start: number, end: number) {
  for (let i = start; i <= end; i++) yield i
}

// Compute sum of first 5 natural numbers: 1 + 2 + 3 + 4 + 5 = 15
assert.equal(Number.sumAll(range(1, 5)), 15)

// Floating point precision example
assert.equal(
  Number.sumAll([0.1, 0.2]),
  0.30000000000000004 // Note IEEE 754 precision limitation
)
```

**Signature**

```ts
declare const sumAll: (collection: Iterable<number>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L312)

Since v2.0.0