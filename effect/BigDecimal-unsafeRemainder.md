Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.unsafeRemainder

Returns the remainder left over when one operand is divided by a second operand.

Throws a `RangeError` if the divisor is `0`.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeRemainder, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeRemainder(unsafeFromString("2"), unsafeFromString("2")), unsafeFromString("0"))
assert.deepStrictEqual(unsafeRemainder(unsafeFromString("3"), unsafeFromString("2")), unsafeFromString("1"))
assert.deepStrictEqual(unsafeRemainder(unsafeFromString("-4"), unsafeFromString("2")), unsafeFromString("0"))
```

**Signature**

```ts
declare const unsafeRemainder: { (divisor: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, divisor: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L755)

Since v2.0.0