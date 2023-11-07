# negate

Provides a negate operation on `BigDecimal`s.

To import and use `negate` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.negate
```

**Example**

```ts
import { negate, unsafeFromString } from 'effect/BigDecimal'

assert.deepStrictEqual(negate(unsafeFromString('3')), unsafeFromString('-3'))
assert.deepStrictEqual(negate(unsafeFromString('-6')), unsafeFromString('6'))
```

**Signature**

```ts
export declare const negate: (n: BigDecimal) => BigDecimal
```
