Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sign

Determines the sign of a given `bigint`.

**Example** (Determining bigint signs)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.sign(-5n), -1)
assert.deepStrictEqual(BigInt.sign(0n), 0)
assert.deepStrictEqual(BigInt.sign(5n), 1)
```

**Signature**

```ts
declare const sign: (n: bigint) => Ordering
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L462)

Since v2.0.0