# greaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

To import and use `greaterThan` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.greaterThan
```

**Example**

```ts
import { greaterThan, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(greaterThan(unsafeFromString("2"), unsafeFromString("3")), false)
assert.deepStrictEqual(greaterThan(unsafeFromString("3"), unsafeFromString("3")), false)
assert.deepStrictEqual(greaterThan(unsafeFromString("4"), unsafeFromString("3")), true)
```

**Signature**

```ts
export declare const greaterThan: {
  (that: BigDecimal): (self: BigDecimal) => boolean
  (self: BigDecimal, that: BigDecimal): boolean
}
```
