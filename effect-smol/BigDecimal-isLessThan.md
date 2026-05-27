Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isLessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**When to use**

Use to test whether one `BigDecimal` is strictly less than another.

**Example** (Checking less-than comparisons)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.isLessThan(BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  BigDecimal.isLessThan(BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  BigDecimal.isLessThan(BigDecimal.fromStringUnsafe("4"), BigDecimal.fromStringUnsafe("3")),
  false
)
```

**Signature**

```ts
declare const isLessThan: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L777)

Since v4.0.0