Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.abs

Determines the absolute value of a given `bigint`.

**Example** (Calculating absolute values)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.abs(-5n), 5n)
assert.deepStrictEqual(BigInt.abs(0n), 0n)
assert.deepStrictEqual(BigInt.abs(5n), 5n)
```

**Signature**

```ts
declare const abs: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L471)

Since v2.0.0