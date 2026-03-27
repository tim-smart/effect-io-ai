Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.remainderUnsafe

Returns the remainder left over when one operand is divided by a second operand.

Throws a `RangeError` if the divisor is `0`.

**Example**

```ts
import { fromStringUnsafe, remainderUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  remainderUnsafe(fromStringUnsafe("2"), fromStringUnsafe("2")),
  fromStringUnsafe("0")
)
assert.deepStrictEqual(
  remainderUnsafe(fromStringUnsafe("3"), fromStringUnsafe("2")),
  fromStringUnsafe("1")
)
assert.deepStrictEqual(
  remainderUnsafe(fromStringUnsafe("-4"), fromStringUnsafe("2")),
  fromStringUnsafe("0")
)
```

**Signature**

```ts
declare const remainderUnsafe: { (divisor: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, divisor: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L976)

Since v2.0.0