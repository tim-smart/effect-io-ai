# sign

Determines the sign of a given `BigDecimal`.

To import and use `sign` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.sign
undefined

**Example**

```ts
import { sign, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(sign(unsafeFromString("-5")), -1)
assert.deepStrictEqual(sign(unsafeFromString("0")), 0)
assert.deepStrictEqual(sign(unsafeFromString("5")), 1)
```

**Signature**

```ts
export declare const sign: (n: BigDecimal) => Ordering
```
