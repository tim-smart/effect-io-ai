# divide

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

Returns `None` if the divisor is `0n`.

To import and use `divide` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.divide
```

**Example**

```ts
import { BigInt, Option } from "effect"

assert.deepStrictEqual(BigInt.divide(6n, 3n), Option.some(2n))
assert.deepStrictEqual(BigInt.divide(6n, 0n), Option.none())
```

**Signature**

```ts
export declare const divide: {
  (that: bigint): (self: bigint) => Option.Option<bigint>
  (self: bigint, that: bigint): Option.Option<bigint>
}
```
