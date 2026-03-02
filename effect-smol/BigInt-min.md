Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.min

Returns the minimum between two `bigint`s.

**Example**

```ts
import { min } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(min(2n, 3n), 2n)
```

**Signature**

```ts
declare const min: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L395)

Since v2.0.0