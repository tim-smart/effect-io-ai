Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sign

Determines the sign of a given `bigint`.

**Example**

```ts
import { sign } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(sign(-5n), -1)
assert.deepStrictEqual(sign(0n), 0)
assert.deepStrictEqual(sign(5n), 1)
```

**Signature**

```ts
declare const sign: (n: bigint) => Ordering
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L435)

Since v2.0.0