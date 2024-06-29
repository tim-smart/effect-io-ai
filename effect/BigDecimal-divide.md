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
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(
  BigDecimal.divide(BigDecimal.unsafeFromString("6"), BigDecimal.unsafeFromString("3")),
  Option.some(BigDecimal.unsafeFromString("2"))
)
assert.deepStrictEqual(
  BigDecimal.divide(BigDecimal.unsafeFromString("6"), BigDecimal.unsafeFromString("4")),
  Option.some(BigDecimal.unsafeFromString("1.5"))
)
assert.deepStrictEqual(
  BigDecimal.divide(BigDecimal.unsafeFromString("6"), BigDecimal.unsafeFromString("0")),
  Option.none()
)
```

**Signature**

```ts
export declare const divide: {
  (that: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>
  (self: BigDecimal, that: BigDecimal): Option.Option<BigDecimal>
}
```
