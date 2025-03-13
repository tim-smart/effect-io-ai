Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.divide

Provides a division operation on `BigDecimal`s.

If the dividend is not a multiple of the divisor the result will be a `BigDecimal` value
which represents the integer division rounded down to the nearest integer.

If the divisor is `0`, the result will be `None`.

**Example**

```ts
import * as assert from "node:assert"
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(BigDecimal.divide(BigDecimal.unsafeFromString("6"), BigDecimal.unsafeFromString("3")), Option.some(BigDecimal.unsafeFromString("2")))
assert.deepStrictEqual(BigDecimal.divide(BigDecimal.unsafeFromString("6"), BigDecimal.unsafeFromString("4")), Option.some(BigDecimal.unsafeFromString("1.5")))
assert.deepStrictEqual(BigDecimal.divide(BigDecimal.unsafeFromString("6"), BigDecimal.unsafeFromString("0")), Option.none())
```

**Signature**

```ts
declare const divide: { (that: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>; (self: BigDecimal, that: BigDecimal): Option.Option<BigDecimal>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L384)

Since v2.0.0