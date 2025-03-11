## divide

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

Returns `None` if the divisor is `0n`.

**Example**

```ts
import * as assert from "node:assert"
import { BigInt, Option } from "effect"

assert.deepStrictEqual(BigInt.divide(6n, 3n), Option.some(2n))
assert.deepStrictEqual(BigInt.divide(6n, 0n), Option.none())
```

**Signature**

```ts
declare const divide: { (that: bigint): (self: bigint) => Option.Option<bigint>; (self: bigint, that: bigint): Option.Option<bigint>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L114)

Since v2.0.0