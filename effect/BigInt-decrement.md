Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.decrement

Returns the result of subtracting `1n` from a `bigint`.

**When to use**

Use to decrement a `bigint` counter by one.

**Example** (Decrementing a bigint)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.decrement(3n), 2n)
```

**Signature**

```ts
declare const decrement: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L271)

Since v2.0.0