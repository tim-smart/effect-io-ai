Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isLessThanOrEqualTo

Returns a function that checks if a given `bigint` is less than or equal to the provided one.

**Example**

```ts
import { isLessThanOrEqualTo } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(isLessThanOrEqualTo(2n, 3n), true)
assert.deepStrictEqual(isLessThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(isLessThanOrEqualTo(4n, 3n), false)
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L272)

Since v2.0.0