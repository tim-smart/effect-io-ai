# max

Returns the maximum between two `BigDecimal`s.

To import and use `max` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.max
undefined

**Example**

```ts
import { max, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(max(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("3"))
```

**Signature**

```ts
export declare const max: {
  (that: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, that: BigDecimal): BigDecimal
}
```
