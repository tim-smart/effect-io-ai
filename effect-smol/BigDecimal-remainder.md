Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.remainder

Computes the decimal remainder safely when one operand is divided by a second
operand.

**When to use**

Use to compute a decimal remainder while representing division by zero as
`Option.none`.

**Details**

If the divisor is `0`, the result will be `Option.none()`.

**Example** (Computing remainders safely)

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

**See**

- `remainderUnsafe` for remainder calculation that throws when the divisor is zero
- `divide` for decimal quotient calculation

**Signature**

```ts
declare const remainder: { (divisor: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>; (self: BigDecimal, divisor: BigDecimal): Option.Option<BigDecimal>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1107)

Since v2.0.0