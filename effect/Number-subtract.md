Package: `effect`<br />
Module: `Number`<br />

## Number.subtract

Performs subtraction in the set of JavaScript numbers.

**Example**

```ts
import * as assert from "node:assert/strict"
import { pipe } from "effect"
import * as Number from "effect/Number"

// Data-first style (direct application)
assert.equal(Number.subtract(2, 3), -1) // 2 - 3 = -1
assert.equal(Number.subtract(10, 5), 5) // 10 - 5 = 5
assert.equal(Number.subtract(0.3, 0.1), 0.19999999999999998) // Note: floating-point precision limitation

// Data-last style (pipeable)
assert.equal(
  pipe(
    10,
    Number.subtract(5) // 10 - 5 = 5
  ),
  5
)

// Chaining multiple subtractions
assert.equal(
  pipe(
    20,
    Number.subtract(5), // 20 - 5 = 15
    Number.subtract(3), // 15 - 3 = 12
    Number.subtract(2) // 12 - 2 = 10
  ),
  10
)

// Right identity property: a - 0 = a
assert.equal(Number.subtract(42, 0), 42)

// Self-annihilation property: a - a = 0
assert.equal(Number.subtract(42, 42), 0)

// Non-commutative property: a - b ≠ b - a
assert.equal(Number.subtract(5, 3), 2) // 5 - 3 = 2
assert.equal(Number.subtract(3, 5), -2) // 3 - 5 = -2

// Inverse relation: a - b = -(b - a)
assert.equal(Number.subtract(5, 3), -Number.subtract(3, 5))
```

**Signature**

```ts
declare const subtract: { (subtrahend: number): (minuend: number) => number; (minuend: number, subtrahend: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L366)

Since v2.0.0