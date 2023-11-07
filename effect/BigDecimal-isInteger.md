# isInteger

Checks if a given `BigDecimal` is an integer.

To import and use `isInteger` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.isInteger
```

**Example**

```ts
import { isInteger, unsafeFromString } from 'effect/BigDecimal'

assert.deepStrictEqual(isInteger(unsafeFromString('0')), true)
assert.deepStrictEqual(isInteger(unsafeFromString('1')), true)
assert.deepStrictEqual(isInteger(unsafeFromString('1.1')), false)
```

**Signature**

```ts
export declare const isInteger: (n: BigDecimal) => boolean
```
