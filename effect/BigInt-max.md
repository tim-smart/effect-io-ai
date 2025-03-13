Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.max

Returns the maximum between two `bigint`s.

**Example**

```ts
import * as assert from "node:assert"
import { max } from "effect/BigInt"

assert.deepStrictEqual(max(2n, 3n), 3n)
```

**Signature**

```ts
declare const max: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L367)

Since v2.0.0