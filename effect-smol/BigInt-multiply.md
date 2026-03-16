Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.multiply

Provides a multiplication operation on `bigint`s.

**Example**

```ts
import { multiply } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(multiply(2n, 3n), 6n)
```

**Signature**

```ts
declare const multiply: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L90)

Since v2.0.0