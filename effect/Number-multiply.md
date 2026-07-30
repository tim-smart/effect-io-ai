Package: `effect`<br />
Module: `Number`<br />

## Number.multiply

Performs **multiplication** in the set of JavaScript numbers.

**Example**

```ts
import * as assert from "node:assert/strict"
import { pipe } from "effect"
import * as Number from "effect/Number"

// Data-first style (direct application)
assert.equal(Number.multiply(2, 3), 6) // 2 × 3 = 6
assert.equal(Number.multiply(-4, 5), -20) // (-4) × 5 = -20
assert.equal(Number.multiply(-3, -2), 6) // (-3) × (-2) = 6
assert.equal(Number.multiply(0.1, 0.2), 0.020000000000000004) // Note: floating-point precision limitation

// Data-last style (pipeable)
assert.equal(
  pipe(
    10,
    Number.multiply(5) // 10 × 5 = 50
  ),
  50
)

// Chaining multiple multiplications
assert.equal(
  pipe(
    2,
    Number.multiply(3), // 2 × 3 = 6
    Number.multiply(4), // 6 × 4 = 24
    Number.multiply(0.5) // 24 × 0.5 = 12
  ),
  12
)

// Identity property: a × 1 = a
assert.equal(Number.multiply(42, 1), 42)

// Zero property: a × 0 = 0
assert.equal(Number.multiply(42, 0), 0)

// Commutative property: a × b = b × a
assert.equal(Number.multiply(5, 3), Number.multiply(3, 5))

// Associative property: (a × b) × c = a × (b × c)
const a = 2,
  b = 3,
  c = 4
assert.equal(
  Number.multiply(Number.multiply(a, b), c),
  Number.multiply(a, Number.multiply(b, c))
)
```

**Signature**

```ts
declare const multiply: { (multiplicand: number): (multiplier: number) => number; (multiplier: number, multiplicand: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L450)

Since v2.0.0