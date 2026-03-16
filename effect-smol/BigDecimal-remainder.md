Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.remainder

Returns the remainder left over when one operand is divided by a second operand.

If the divisor is `0`, the result will be `Option.none()`.

**Example**

```ts
import { BigDecimal, Option } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.remainder(
    BigDecimal.fromStringUnsafe("2"),
    BigDecimal.fromStringUnsafe("2")
  ),
  Option.some(BigDecimal.fromStringUnsafe("0"))
)
assert.deepStrictEqual(
  BigDecimal.remainder(
    BigDecimal.fromStringUnsafe("3"),
    BigDecimal.fromStringUnsafe("2")
  ),
  Option.some(BigDecimal.fromStringUnsafe("1"))
)
assert.deepStrictEqual(
  BigDecimal.remainder(
    BigDecimal.fromStringUnsafe("-4"),
    BigDecimal.fromStringUnsafe("2")
  ),
  Option.some(BigDecimal.fromStringUnsafe("0"))
)
```

**Signature**

```ts
declare const remainder: { (divisor: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>; (self: BigDecimal, divisor: BigDecimal): Option.Option<BigDecimal>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L883)

Since v2.0.0