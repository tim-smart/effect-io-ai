## multiply

Provides a multiplication operation on `bigint`s.

**Example**

```ts
import * as assert from "node:assert"
import { multiply } from "effect/BigInt"

assert.deepStrictEqual(multiply(2n, 3n), 6n)
```

**Signature**

```ts
declare const multiply: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L70)

Since v2.0.0