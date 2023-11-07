# subtract

Provides a subtraction operation on `BigDecimal`s.

To import and use `subtract` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.subtract
```

**Example**

```ts
import { subtract, unsafeFromString } from 'effect/BigDecimal'

assert.deepStrictEqual(subtract(unsafeFromString('2'), unsafeFromString('3')), unsafeFromString('-1'))
```

**Signature**

```ts
export declare const subtract: {
  (that: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, that: BigDecimal): BigDecimal
}
```
