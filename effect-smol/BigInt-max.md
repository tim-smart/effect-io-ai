Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.max

Returns the maximum between two `bigint`s.

**Example**

```ts
import { max } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(max(2n, 3n), 3n)
```

**Signature**

```ts
declare const max: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L417)

Since v2.0.0