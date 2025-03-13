Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.unsafeDivide

Provides an unsafe division operation on `BigDecimal`s.

If the dividend is not a multiple of the divisor the result will be a `BigDecimal` value
which represents the integer division rounded down to the nearest integer.

Throws a `RangeError` if the divisor is `0`.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeDivide, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeDivide(unsafeFromString("6"), unsafeFromString("3")), unsafeFromString("2"))
assert.deepStrictEqual(unsafeDivide(unsafeFromString("6"), unsafeFromString("4")), unsafeFromString("1.5"))
```

**Signature**

```ts
declare const unsafeDivide: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L424)

Since v2.0.0