# unsafeToNumber

Converts a `BigDecimal` to a `number`.

This function will produce incorrect results if the `BigDecimal` exceeds the 64-bit range of a `number`.

To import and use `unsafeToNumber` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.unsafeToNumber
undefined

**Example**

```ts
import { unsafeToNumber, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeToNumber(unsafeFromString("123.456")), 123.456)
```

**Signature**

```ts
export declare const unsafeToNumber: (n: BigDecimal) => number
```
