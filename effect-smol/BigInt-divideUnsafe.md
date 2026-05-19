Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.divideUnsafe

Divides one `bigint` by another, throwing if the divisor is zero.

Uses JavaScript `bigint` division, so non-exact quotients are truncated
toward zero. Throws a `RangeError` when the divisor is `0n`.

**Example** (Dividing bigints unsafely)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.divideUnsafe(6n, 3n), 2n)
assert.deepStrictEqual(BigInt.divideUnsafe(6n, 4n), 1n)
```

**Signature**

```ts
declare const divideUnsafe: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L165)

Since v4.0.0