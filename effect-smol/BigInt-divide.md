Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.divide

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

Returns `undefined` if the divisor is `0n`.

**Example**

```ts
import { divide } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(divide(6n, 3n), 2n)
assert.deepStrictEqual(divide(6n, 0n), undefined)
```

**Signature**

```ts
declare const divide: { (that: bigint): (self: bigint) => bigint | undefined; (self: bigint, that: bigint): bigint | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L133)

Since v2.0.0