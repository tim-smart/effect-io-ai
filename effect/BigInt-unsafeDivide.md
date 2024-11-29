# unsafeDivide

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

Throws a `RangeError` if the divisor is `0n`.

To import and use `unsafeDivide` from the "BigInt" module:

ts
import \* as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.unsafeDivide
undefined

**Example**

```ts
import { unsafeDivide } from "effect/BigInt"

assert.deepStrictEqual(unsafeDivide(6n, 3n), 2n)
assert.deepStrictEqual(unsafeDivide(6n, 4n), 1n)
```

**Signature**

```ts
export declare const unsafeDivide: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
