Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.increment

Returns the result of adding `1n` to a given number.

**Example**

```ts
import { increment } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(increment(2n), 3n)
```

**Signature**

```ts
declare const increment: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L180)

Since v2.0.0