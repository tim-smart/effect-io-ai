# multiply

Provides a multiplication operation on `BigDecimal`s.

To import and use `multiply` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.multiply
```

**Example**

```ts
import { multiply, unsafeFromString } from 'effect/BigDecimal'

assert.deepStrictEqual(multiply(unsafeFromString('2'), unsafeFromString('3')), unsafeFromString('6'))
```

**Signature**

```ts
export declare const multiply: {
  (that: BigDecimal): (self: BigDecimal) => BigDecimal
  (self: BigDecimal, that: BigDecimal): BigDecimal
}
```
