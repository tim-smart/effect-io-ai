# unsafeDivide

Provides an unsafe division operation on `BigDecimal`s.

If the dividend is not a multiple of the divisor the result will be a `BigDecimal` value
which represents the integer division rounded down to the nearest integer.

Throws a `RangeError` if the divisor is `0`.

To import and use `unsafeDivide` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.unsafeDivide
undefined

**Example**

```ts
import { unsafeDivide, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeDivide(unsafeFromString("6"), unsafeFromString("3")), unsafeFromString("2"))
assert.deepStrictEqual(unsafeDivide(unsafeFromString("6"), unsafeFromString("4")), unsafeFromString("1.5"))
```

**Signature**

```ts
export declare const unsafeDivide: {
  (that: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, that: BigDecimal): BigDecimal
}
```
