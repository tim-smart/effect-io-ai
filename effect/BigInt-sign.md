# sign

Determines the sign of a given `bigint`.

To import and use `sign` from the "BigInt" module:

ts
import \* as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.sign
undefined

**Example**

```ts
import { sign } from "effect/BigInt"

assert.deepStrictEqual(sign(-5n), -1)
assert.deepStrictEqual(sign(0n), 0)
assert.deepStrictEqual(sign(5n), 1)
```

**Signature**

```ts
export declare const sign: (n: bigint) => Ordering
```
