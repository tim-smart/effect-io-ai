Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.decrement

Decrements a number by `1n`.

**Example**

```ts
import { decrement } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(decrement(3n), 2n)
```

**Signature**

```ts
declare const decrement: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L199)

Since v2.0.0