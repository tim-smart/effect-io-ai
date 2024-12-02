# safeFromNumber

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

Returns `None` if the number is not finite (`NaN`, `+Infinity` or `-Infinity`).

To import and use `safeFromNumber` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.safeFromNumber
undefined

**Example**

```ts
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(BigDecimal.safeFromNumber(123), Option.some(BigDecimal.make(123n, 0)))
assert.deepStrictEqual(BigDecimal.safeFromNumber(123.456), Option.some(BigDecimal.make(123456n, 3)))
assert.deepStrictEqual(BigDecimal.safeFromNumber(Infinity), Option.none())
```

**Signature**

```ts
export declare const safeFromNumber: (n: number) => Option.Option<BigDecimal>
```
