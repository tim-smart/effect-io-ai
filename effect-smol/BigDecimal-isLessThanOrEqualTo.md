Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isLessThanOrEqualTo

Checks if a given `BigDecimal` is less than or equal to the provided one.

**When to use**

Use to test whether one `BigDecimal` is less than or equal to another.

**Example** (Checking less-than-or-equal comparisons)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.isLessThanOrEqualTo(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  BigDecimal.isLessThanOrEqualTo(BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  BigDecimal.isLessThanOrEqualTo(BigDecimal.fromStringUnsafe("4"), BigDecimal.fromStringUnsafe("3")),
  false
)
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L812)

Since v4.0.0