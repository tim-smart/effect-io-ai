# sum

Provides an addition operation on `bigint`s.

To import and use `sum` from the "BigInt" module:

ts
import \* as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.sum
undefined

**Example**

```ts
import { sum } from "effect/BigInt"

assert.deepStrictEqual(sum(2n, 3n), 5n)
```

**Signature**

```ts
export declare const sum: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
