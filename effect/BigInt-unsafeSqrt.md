Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.unsafeSqrt

Determines the square root of a given `bigint` unsafely. Throws if the given `bigint` is negative.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeSqrt } from "effect/BigInt"

assert.deepStrictEqual(unsafeSqrt(4n), 2n)
assert.deepStrictEqual(unsafeSqrt(9n), 3n)
assert.deepStrictEqual(unsafeSqrt(16n), 4n)
```

**Signature**

```ts
declare const unsafeSqrt: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L476)

Since v2.0.0