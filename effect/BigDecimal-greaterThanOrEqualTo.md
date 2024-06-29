# greaterThanOrEqualTo

Checks if a given `BigDecimal` is greater than or equal to the provided one.

To import and use `greaterThanOrEqualTo` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.greaterThanOrEqualTo
```

**Example**

```ts
import { greaterThanOrEqualTo, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(greaterThanOrEqualTo(unsafeFromString("2"), unsafeFromString("3")), false)
assert.deepStrictEqual(greaterThanOrEqualTo(unsafeFromString("3"), unsafeFromString("3")), true)
assert.deepStrictEqual(greaterThanOrEqualTo(unsafeFromString("4"), unsafeFromString("3")), true)
```

**Signature**

```ts
export declare const greaterThanOrEqualTo: {
  (that: BigDecimal): (self: BigDecimal) => boolean
  (self: BigDecimal, that: BigDecimal): boolean
}
```
