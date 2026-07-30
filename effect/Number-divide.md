Package: `effect`<br />
Module: `Number`<br />

## Number.divide

Performs division in the set of JavaScript numbers, returning the result
wrapped in an `Option` to handle division by zero.

**Example**

```ts
import * as assert from "node:assert/strict"
import { pipe, Option } from "effect"
import * as Number from "effect/Number"

// Data-first style (direct application)
assert.equal(Number.divide(6, 3), Option.some(2)) // 6 ÷ 3 = 2
assert.equal(Number.divide(-8, 4), Option.some(-2)) // (-8) ÷ 4 = -2
assert.equal(Number.divide(-10, -5), Option.some(2)) // (-10) ÷ (-5) = 2
assert.equal(Number.divide(1, 3), Option.some(0.3333333333333333)) // Note: floating-point approximation

// Handling division by zero
assert.equal(Number.divide(6, 0), Option.none()) // 6 ÷ 0 is undefined

// Data-last style (pipeable)
assert.equal(
  pipe(
    10,
    Number.divide(2) // 10 ÷ 2 = 5
  ),
  Option.some(5)
)

// Chaining multiple divisions using Option combinators
assert.equal(
  pipe(
    Option.some(24),
    Option.flatMap((n) => Number.divide(n, 2)), // 24 ÷ 2 = 12
    Option.flatMap(Number.divide(3)), // 12 ÷ 3 = 4
    Option.flatMap(Number.divide(2)) // 4 ÷ 2 = 2
  ),
  Option.some(2)
)

// Division-by-one property: a ÷ 1 = a
assert.equal(Number.divide(42, 1), Option.some(42))

// Self-division property: a ÷ a = 1 (for a ≠ 0)
assert.equal(Number.divide(42, 42), Option.some(1))

// Non-commutative property: a ÷ b ≠ b ÷ a
assert.notDeepStrictEqual(
  Number.divide(6, 3), // 6 ÷ 3 = 2
  Number.divide(3, 6) // 3 ÷ 6 = 0.5
)
```

**Signature**

```ts
declare const divide: { (divisor: number): (dividend: number) => Option<number>; (dividend: number, divisor: number): Option<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L589)

Since v2.0.0