Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.subtract

Provides a subtraction operation on `bigint`s.

**Example**

```ts
import * as assert from "node:assert"
import { subtract } from "effect/BigInt"

assert.deepStrictEqual(subtract(2n, 3n), -1n)
```

**Signature**

```ts
declare const subtract: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L92)

Since v2.0.0