# equals

Checks if two `BigDecimal`s are equal.

To import and use `equals` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.equals
undefined

**Signature**

```ts
export declare const equals: {
  (that: BigDecimal): (self: BigDecimal) => boolean
  (self: BigDecimal, that: BigDecimal): boolean
}
```
