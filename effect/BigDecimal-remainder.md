# remainder

Returns the remainder left over when one operand is divided by a second operand.

If the divisor is `0`, the result will be `None`.

To import and use `remainder` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.remainder
```

**Example**

```ts
import { remainder, unsafeFromString } from "effect/BigDecimal"
import { some } from "effect/Option"

assert.deepStrictEqual(remainder(unsafeFromString("2"), unsafeFromString("2")), some(unsafeFromString("0")))
assert.deepStrictEqual(remainder(unsafeFromString("3"), unsafeFromString("2")), some(unsafeFromString("1")))
assert.deepStrictEqual(remainder(unsafeFromString("-4"), unsafeFromString("2")), some(unsafeFromString("0")))
```

**Signature**

```ts
export declare const remainder: {
  (divisor: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>
  (self: BigDecimal, divisor: BigDecimal): Option.Option<BigDecimal>
}
```
