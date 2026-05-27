Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isGreaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**When to use**

Use to test whether one `BigDecimal` is strictly greater than another.

**Example** (Checking greater-than comparisons)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.isGreaterThan(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  BigDecimal.isGreaterThan(BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  BigDecimal.isGreaterThan(BigDecimal.fromStringUnsafe("4"), BigDecimal.fromStringUnsafe("3")),
  true
)
```

**Signature**

```ts
declare const isGreaterThan: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L847)

Since v4.0.0