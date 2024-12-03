# isPositive

Checks if a given `BigDecimal` is positive.

To import and use `isPositive` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.isPositive
```

**Example**

```ts
import { isPositive, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(isPositive(unsafeFromString("-1")), false)
assert.deepStrictEqual(isPositive(unsafeFromString("0")), false)
assert.deepStrictEqual(isPositive(unsafeFromString("1")), true)
```

**Signature**

```ts
export declare const isPositive: (n: BigDecimal) => boolean
```
