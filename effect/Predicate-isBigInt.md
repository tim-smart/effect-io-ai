# isBigInt

Tests if a value is a `bigint`.

To import and use `isBigInt` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isBigInt
undefined

**Example**

```ts
import { isBigInt } from "effect/Predicate"

assert.deepStrictEqual(isBigInt(1n), true)

assert.deepStrictEqual(isBigInt(1), false)
```

**Signature**

```ts
export declare const isBigInt: (input: unknown) => input is bigint
```
