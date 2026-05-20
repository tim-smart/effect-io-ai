Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.min

Returns the minimum between two `bigint`s.

**Example** (Finding the minimum bigint)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.min(2n, 3n), 2n)
```

**Signature**

```ts
declare const min: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L420)

Since v2.0.0