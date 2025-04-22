Package: `effect`<br />
Module: `Number`<br />

## Number.unsafeDivide

Performs division in the set of JavaScript numbers, but misbehaves for
division by zero.

Unlike `module:Number.divide` which returns an Option, this function
directly returns a number or `Infinity` or `NaN`.

- If the `divisor` is zero, it returns `Infinity`.
- If both the `dividend` and the `divisor` are zero, then it returns `NaN`.

**Throws**

An {@link module:Number.DivisionByZeroError} if the divisor is zero.

**Example**

```ts
import * as assert from "node:assert/strict"
import { pipe } from "effect"
import * as Number from "effect/Number"

// Data-first style (direct application)
assert.equal(Number.unsafeDivide(6, 3), 2) // 6 ÷ 3 = 2
assert.equal(Number.unsafeDivide(-8, 4), -2) // (-8) ÷ 4 = -2
assert.equal(Number.unsafeDivide(-10, -5), 2) // (-10) ÷ (-5) = 2
assert.equal(Number.unsafeDivide(1, 3), 0.3333333333333333)

// Data-last style (pipeable)
assert.equal(
  pipe(
    10,
    Number.unsafeDivide(2) // 10 ÷ 2 = 5
  ),
  5
)

// Chaining multiple divisions
assert.equal(
  pipe(
    24,
    Number.unsafeDivide(2), // 24 ÷ 2 = 12
    Number.unsafeDivide(3), // 12 ÷ 3 = 4
    Number.unsafeDivide(2) // 4 ÷ 2 = 2
  ),
  2
)

assert.equal(Number.unsafeDivide(6, 0), Infinity)

assert.equal(Number.unsafeDivide(0, 0), NaN)

// Compare with safe division
const safeResult = Number.divide(6, 3) // Option.some(2)
const unsafeResult = Number.unsafeDivide(6, 3) // 2 directly
```

**See**

- `module:Number.divide` - Safe division returning an Option

**Signature**

```ts
declare const unsafeDivide: { (divisor: number): (dividend: number) => number; (dividend: number, divisor: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L670)

Since v2.0.0