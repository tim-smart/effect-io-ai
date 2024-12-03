# fromNumber

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

Throws a `RangeError` if the number is not finite (`NaN`, `+Infinity` or `-Infinity`).

To import and use `fromNumber` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.fromNumber
undefined

**Signature**

```ts
export declare const fromNumber: (n: number) => BigDecimal
```
