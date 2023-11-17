# abs

Determines the absolute value of a given `BigDecimal`.

To import and use `abs` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.abs
```

**Example**

```ts
import { abs, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(abs(unsafeFromString("-5")), unsafeFromString("5"))
assert.deepStrictEqual(abs(unsafeFromString("0")), unsafeFromString("0"))
assert.deepStrictEqual(abs(unsafeFromString("5")), unsafeFromString("5"))
```

**Signature**

```ts
export declare const abs: (n: BigDecimal) => BigDecimal
```
