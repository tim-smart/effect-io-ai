# remainder

Returns the remainder left over when one operand is divided by a second operand.

If the divisor is `0`, the result will be `None`.

To import and use `remainder` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.remainder
undefined

**Example**

```ts
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(
  BigDecimal.remainder(BigDecimal.unsafeFromString("2"), BigDecimal.unsafeFromString("2")),
  Option.some(BigDecimal.unsafeFromString("0"))
)
assert.deepStrictEqual(
  BigDecimal.remainder(BigDecimal.unsafeFromString("3"), BigDecimal.unsafeFromString("2")),
  Option.some(BigDecimal.unsafeFromString("1"))
)
assert.deepStrictEqual(
  BigDecimal.remainder(BigDecimal.unsafeFromString("-4"), BigDecimal.unsafeFromString("2")),
  Option.some(BigDecimal.unsafeFromString("0"))
)
```

**Signature**

```ts
export declare const remainder: {
  (divisor: BigDecimal): (self: BigDecimal) => Option.Option<BigDecimal>
  (self: BigDecimal, divisor: BigDecimal): Option.Option<BigDecimal>
}
```
