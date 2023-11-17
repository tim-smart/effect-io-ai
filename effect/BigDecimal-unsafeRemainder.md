# unsafeRemainder

Returns the remainder left over when one operand is divided by a second operand.

Throws a `RangeError` if the divisor is `0`.

To import and use `unsafeRemainder` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.unsafeRemainder
```

**Example**

```ts
import { unsafeRemainder, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeRemainder(unsafeFromString("2"), unsafeFromString("2")), unsafeFromString("0"))
assert.deepStrictEqual(unsafeRemainder(unsafeFromString("3"), unsafeFromString("2")), unsafeFromString("1"))
assert.deepStrictEqual(unsafeRemainder(unsafeFromString("-4"), unsafeFromString("2")), unsafeFromString("0"))
```

**Signature**

```ts
export declare const unsafeRemainder: {
  (divisor: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, divisor: BigDecimal): BigDecimal
}
```
