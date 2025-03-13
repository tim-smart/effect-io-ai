Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.abs

Determines the absolute value of a given `bigint`.

**Example**

```ts
import * as assert from "node:assert"
import { abs } from "effect/BigInt"

assert.deepStrictEqual(abs(-5n), 5n)
assert.deepStrictEqual(abs(0n), 0n)
assert.deepStrictEqual(abs(5n), 5n)
```

**Signature**

```ts
declare const abs: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L406)

Since v2.0.0