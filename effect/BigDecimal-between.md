# between

Checks if a `BigDecimal` is between a `minimum` and `maximum` value (inclusive).

To import and use `between` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.between
```

**Example**

```ts
import { between, unsafeFromString } from 'effect/BigDecimal'

assert.deepStrictEqual(between(unsafeFromString('0'), unsafeFromString('5'))(unsafeFromString('3')), true)
assert.deepStrictEqual(between(unsafeFromString('0'), unsafeFromString('5'))(unsafeFromString('-1')), false)
assert.deepStrictEqual(between(unsafeFromString('0'), unsafeFromString('5'))(unsafeFromString('6')), false)
```

**Signature**

```ts
export declare const between: {
  (minimum: BigDecimal, maximum: BigDecimal): (self: BigDecimal) => boolean
  (self: BigDecimal, minimum: BigDecimal, maximum: BigDecimal): boolean
}
```
