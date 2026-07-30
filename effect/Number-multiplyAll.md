Package: `effect`<br />
Module: `Number`<br />

## Number.multiplyAll

Computes the product of all elements in an iterable collection of numbers.

**Example**

```ts
import * as assert from "node:assert/strict"
import * as Number from "effect/Number"

// Basic products
assert.equal(Number.multiplyAll([2, 3, 4]), 24) // 2 × 3 × 4 = 24
assert.equal(Number.multiplyAll([1.5, 2, 3]), 9) // 1.5 × 2 × 3 = 9

// Empty collection returns the multiplicative identity (1)
assert.equal(Number.multiplyAll([]), 1)

// Single element collection
assert.equal(Number.multiplyAll([42]), 42)

// Products with negative numbers
assert.equal(Number.multiplyAll([2, -3, 4]), -24) // 2 × (-3) × 4 = -24
assert.equal(Number.multiplyAll([-2, -3]), 6) // (-2) × (-3) = 6

// Zero property - if any element is zero, product is zero
assert.equal(Number.multiplyAll([2, 0, 3]), 0)

// Works with any iterable
assert.equal(Number.multiplyAll(new Set([2, 3, 4])), 24)

// Using with generated sequences
function* range(start: number, end: number) {
  for (let i = start; i <= end; i++) yield i
}

// Compute factorial: 5! = 5 × 4 × 3 × 2 × 1 = 120
assert.equal(Number.multiplyAll(range(1, 5)), 120)
```

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<number>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L522)

Since v2.0.0