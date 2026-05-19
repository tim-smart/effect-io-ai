Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.increment

Returns the result of adding `1n` to a `bigint`.

**Example** (Incrementing a bigint)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.increment(2n), 3n)
```

**Signature**

```ts
declare const increment: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L185)

Since v2.0.0