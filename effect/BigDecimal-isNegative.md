# isNegative

Checks if a given `BigDecimal` is negative.

To import and use `isNegative` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.isNegative
```

**Example**

```ts
import { isNegative, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(isNegative(unsafeFromString("-1")), true)
assert.deepStrictEqual(isNegative(unsafeFromString("0")), false)
assert.deepStrictEqual(isNegative(unsafeFromString("1")), false)
```

**Signature**

```ts
export declare const isNegative: (n: BigDecimal) => boolean
```
