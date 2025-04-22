Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isBigInt

Tests if a value is a `bigint`.

**Example**

```ts
import * as assert from "node:assert"
import { isBigInt } from "effect/BigInt"

assert.deepStrictEqual(isBigInt(1n), true)
assert.deepStrictEqual(isBigInt(1), false)
```

**Signature**

```ts
declare const isBigInt: (u: unknown) => u is bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L38)

Since v2.0.0