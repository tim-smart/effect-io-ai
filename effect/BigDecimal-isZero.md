# isZero

Checks if a given `BigDecimal` is `0`.

To import and use `isZero` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.isZero
undefined

**Example**

```ts
import { isZero, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(isZero(unsafeFromString("0")), true)
assert.deepStrictEqual(isZero(unsafeFromString("1")), false)
```

**Signature**

```ts
export declare const isZero: (n: BigDecimal) => boolean
```
