Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sqrtUnsafe

Returns the integer square root of a non-negative `bigint`.

For non-perfect squares, returns the largest `bigint` whose square is less
than or equal to the input. Throws a `RangeError` if the input is negative.

**Example** (Calculating square roots unsafely)

```ts
import { sqrtUnsafe } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(sqrtUnsafe(4n), 2n)
assert.deepStrictEqual(sqrtUnsafe(9n), 3n)
assert.deepStrictEqual(sqrtUnsafe(16n), 4n)
```

**Signature**

```ts
declare const sqrtUnsafe: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L546)

Since v2.0.0