# divide

Provides a division operation on `BigDecimal`s.

If the dividend is not a multiple of the divisor the result will be a `BigDecimal` value
which represents the integer division rounded down to the nearest integer.

If the divisor is `0`, the result will be `None`.

To import and use `divide` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.divide
```

**Example**

```ts
import { divide, unsafeFromString } from "effect/BigDecimal"
import { some, none } from "effect/Option"

assert.deepStrictEqual(divide(unsafeFromString("6"), unsafeFromString("3")), some(unsafeFromString("2")))
assert.deepStrictEqual(divide(unsafeFromString("6"), unsafeFromString("4")), some(unsafeFromString("1.5")))
assert.deepStrictEqual(divide(unsafeFromString("6"), unsafeFromString("0")), none())
```

**Signature**

```ts
export declare const divide: {
  (that: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>
  (self: BigDecimal, that: BigDecimal): Option.Option<BigDecimal>
}
```
