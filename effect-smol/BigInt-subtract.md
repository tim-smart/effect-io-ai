Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.subtract

Provides a subtraction operation on `bigint`s.

**Example** (Subtracting bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.subtract(2n, 3n), -1n)
```

**Signature**

```ts
declare const subtract: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L114)

Since v2.0.0