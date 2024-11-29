# lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

To import and use `lessThan` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.lessThan
undefined

**Example**

```ts
import { lessThan, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(lessThan(unsafeFromString("2"), unsafeFromString("3")), true)
assert.deepStrictEqual(lessThan(unsafeFromString("3"), unsafeFromString("3")), false)
assert.deepStrictEqual(lessThan(unsafeFromString("4"), unsafeFromString("3")), false)
```

**Signature**

```ts
export declare const lessThan: {
  (that: BigDecimal): (self: BigDecimal) => boolean
  (self: BigDecimal, that: BigDecimal): boolean
}
```
