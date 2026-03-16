Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.divide

Provides a division operation on `BigDecimal`s.

If the dividend is not a multiple of the divisor the result will be a `BigDecimal` value
which represents the integer division rounded down to the nearest integer.

If the divisor is `0`, the result will be `Option.none()`.

**Example**

```ts
import { BigDecimal, Option } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.divide(
    BigDecimal.fromStringUnsafe("6"),
    BigDecimal.fromStringUnsafe("3")
  ),
  Option.some(BigDecimal.fromStringUnsafe("2"))
)
assert.deepStrictEqual(
  BigDecimal.divide(
    BigDecimal.fromStringUnsafe("6"),
    BigDecimal.fromStringUnsafe("4")
  ),
  Option.some(BigDecimal.fromStringUnsafe("1.5"))
)
assert.deepStrictEqual(
  BigDecimal.divide(
    BigDecimal.fromStringUnsafe("6"),
    BigDecimal.fromStringUnsafe("0")
  ),
  Option.none()
)
```

**Signature**

```ts
declare const divide: { (that: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>; (self: BigDecimal, that: BigDecimal): Option.Option<BigDecimal>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L452)

Since v2.0.0