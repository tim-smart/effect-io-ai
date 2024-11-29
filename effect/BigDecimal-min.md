# min

Returns the minimum between two `BigDecimal`s.

To import and use `min` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.min
undefined

**Example**

```ts
import { min, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(min(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("2"))
```

**Signature**

```ts
export declare const min: {
  (that: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, that: BigDecimal): BigDecimal
}
```
