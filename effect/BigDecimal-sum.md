# sum

Provides an addition operation on `BigDecimal`s.

To import and use `sum` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.sum
```

**Example**

```ts
import { sum, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(sum(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("5"))
```

**Signature**

```ts
export declare const sum: {
  (that: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, that: BigDecimal): BigDecimal
}
```
