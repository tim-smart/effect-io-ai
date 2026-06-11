Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isBigInt

Checks whether a value is a `bigint`.

**When to use**

Use to validate unknown input and narrow it to `bigint`.

**Example** (Checking for bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.isBigInt(1n), true)
assert.deepStrictEqual(BigInt.isBigInt(1), false)
```

**Signature**

```ts
declare const isBigInt: (u: unknown) => u is bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L78)

Since v2.0.0