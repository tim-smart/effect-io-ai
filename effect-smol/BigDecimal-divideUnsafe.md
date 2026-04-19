Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.divideUnsafe

Provides an unsafe division operation on `BigDecimal`s.

If the dividend is not a multiple of the divisor the result will be a `BigDecimal` value
which represents the integer division rounded down to the nearest integer.

Throws a `RangeError` if the divisor is `0`.

**Example**

```ts
import { divideUnsafe, fromStringUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  divideUnsafe(fromStringUnsafe("6"), fromStringUnsafe("3")),
  fromStringUnsafe("2")
)
assert.deepStrictEqual(
  divideUnsafe(fromStringUnsafe("6"), fromStringUnsafe("4")),
  fromStringUnsafe("1.5")
)
```

**Signature**

```ts
declare const divideUnsafe: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L556)

Since v2.0.0