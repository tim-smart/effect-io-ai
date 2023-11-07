# lessThanOrEqualTo

Checks if a given `BigDecimal` is less than or equal to the provided one.

To import and use `lessThanOrEqualTo` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.lessThanOrEqualTo
```

**Example**

```ts
import { lessThanOrEqualTo, unsafeFromString } from 'effect/BigDecimal'

assert.deepStrictEqual(lessThanOrEqualTo(unsafeFromString('2'), unsafeFromString('3')), true)
assert.deepStrictEqual(lessThanOrEqualTo(unsafeFromString('3'), unsafeFromString('3')), true)
assert.deepStrictEqual(lessThanOrEqualTo(unsafeFromString('4'), unsafeFromString('3')), false)
```

**Signature**

```ts
export declare const lessThanOrEqualTo: {
  (that: BigDecimal): (self: BigDecimal) => boolean
  (self: BigDecimal, that: BigDecimal): boolean
}
```
