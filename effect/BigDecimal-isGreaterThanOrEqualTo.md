Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isGreaterThanOrEqualTo

Checks whether a given `BigDecimal` is greater than or equal to the provided one.

**When to use**

Use to test whether one `BigDecimal` is greater than or equal to another.

**Example** (Checking greater-than-or-equal comparisons)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.isGreaterThanOrEqualTo(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  BigDecimal.isGreaterThanOrEqualTo(BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  BigDecimal.isGreaterThanOrEqualTo(BigDecimal.fromStringUnsafe("4"), BigDecimal.fromStringUnsafe("3")),
  true
)
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L835)

Since v4.0.0