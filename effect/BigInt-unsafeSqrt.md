# unsafeSqrt

Determines the square root of a given `bigint` unsafely. Throws if the given `bigint` is negative.

To import and use `unsafeSqrt` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.unsafeSqrt
```

**Example**

```ts
import { unsafeSqrt } from "effect/BigInt"

assert.deepStrictEqual(unsafeSqrt(4n), 2n)
assert.deepStrictEqual(unsafeSqrt(9n), 3n)
assert.deepStrictEqual(unsafeSqrt(16n), 4n)
```

**Signature**

```ts
export declare const unsafeSqrt: (n: bigint) => bigint
```
