Package: `effect`<br />
Module: `Number`<br />

## Number.sum

Performs addition in the set of JavaScript numbers.

**Example**

```ts
import * as assert from "node:assert/strict"
import { pipe } from "effect"
import * as Number from "effect/Number"

// Data-first style (direct application)
assert.equal(Number.sum(2, 3), 5)
assert.equal(Number.sum(-10, 5), -5)
assert.equal(Number.sum(0.1, 0.2), 0.30000000000000004) // Note: floating-point precision limitation

// Data-last style (pipeable)
assert.equal(
  pipe(
    10,
    Number.sum(5) // 10 + 5 = 15
  ),
  15
)

// Chaining multiple additions
assert.equal(
  pipe(
    1,
    Number.sum(2), // 1 + 2 = 3
    Number.sum(3), // 3 + 3 = 6
    Number.sum(4) // 6 + 4 = 10
  ),
  10
)

// Identity property: a + 0 = a
assert.equal(Number.sum(42, 0), 42)

// Commutative property: a + b = b + a
assert.equal(Number.sum(5, 3), Number.sum(3, 5))
```

**Signature**

```ts
declare const sum: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L241)

Since v2.0.0