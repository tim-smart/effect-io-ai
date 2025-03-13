Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.remainder

Returns the remainder left over when one operand is divided by a second operand.

If the divisor is `0`, the result will be `None`.

**Example**

```ts
import * as assert from "node:assert"
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(BigDecimal.remainder(BigDecimal.unsafeFromString("2"), BigDecimal.unsafeFromString("2")), Option.some(BigDecimal.unsafeFromString("0")))
assert.deepStrictEqual(BigDecimal.remainder(BigDecimal.unsafeFromString("3"), BigDecimal.unsafeFromString("2")), Option.some(BigDecimal.unsafeFromString("1")))
assert.deepStrictEqual(BigDecimal.remainder(BigDecimal.unsafeFromString("-4"), BigDecimal.unsafeFromString("2")), Option.some(BigDecimal.unsafeFromString("0")))
```

**Signature**

```ts
declare const remainder: { (divisor: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>; (self: BigDecimal, divisor: BigDecimal): Option.Option<BigDecimal>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L725)

Since v2.0.0