# clamp

Restricts the given `BigDecimal` to be within the range specified by the `minimum` and `maximum` values.

- If the `BigDecimal` is less than the `minimum` value, the function returns the `minimum` value.
- If the `BigDecimal` is greater than the `maximum` value, the function returns the `maximum` value.
- Otherwise, it returns the original `BigDecimal`.

To import and use `clamp` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.clamp
```

**Example**

```ts
import { clamp, unsafeFromString } from 'effect/BigDecimal'

assert.deepStrictEqual(
  clamp(unsafeFromString('0'), unsafeFromString('5'))(unsafeFromString('3')),
  unsafeFromString('3')
)
assert.deepStrictEqual(
  clamp(unsafeFromString('0'), unsafeFromString('5'))(unsafeFromString('-1')),
  unsafeFromString('0')
)
assert.deepStrictEqual(
  clamp(unsafeFromString('0'), unsafeFromString('5'))(unsafeFromString('6')),
  unsafeFromString('5')
)
```

**Signature**

```ts
export declare const clamp: {
  (minimum: BigDecimal, maximum: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, minimum: BigDecimal, maximum: BigDecimal): BigDecimal
}
```
