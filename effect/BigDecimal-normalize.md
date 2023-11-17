# normalize

Normalizes a given `BigDecimal` by removing trailing zeros.

To import and use `normalize` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.normalize
```

**Example**

```ts
import { normalize, make, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(normalize(unsafeFromString("123.00000")), make(123n, 0))
assert.deepStrictEqual(normalize(unsafeFromString("12300000")), make(123n, -5))
```

**Signature**

```ts
export declare const normalize: (self: BigDecimal) => BigDecimal
```
