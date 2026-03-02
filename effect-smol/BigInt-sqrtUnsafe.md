Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sqrtUnsafe

Determines the square root of a given `bigint` unsafely. Throws if the given `bigint` is negative.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L520)

Since v2.0.0