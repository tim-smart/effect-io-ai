# abs

Determines the absolute value of a given `bigint`.

To import and use `abs` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.abs
```

**Example**

```ts
import { abs } from "effect/BigInt"

assert.deepStrictEqual(abs(-5n), 5n)
assert.deepStrictEqual(abs(0n), 0n)
assert.deepStrictEqual(abs(5n), 5n)
```

**Signature**

```ts
export declare const abs: (n: bigint) => bigint
```
