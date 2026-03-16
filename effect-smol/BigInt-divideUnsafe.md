Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.divideUnsafe

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

Throws a `RangeError` if the divisor is `0n`.

**Example**

```ts
import { divideUnsafe } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(divideUnsafe(6n, 3n), 2n)
assert.deepStrictEqual(divideUnsafe(6n, 4n), 1n)
```

**Signature**

```ts
declare const divideUnsafe: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L164)

Since v2.0.0