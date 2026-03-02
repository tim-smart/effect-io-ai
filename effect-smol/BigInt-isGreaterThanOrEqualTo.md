Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isGreaterThanOrEqualTo

Returns a function that checks if a given `bigint` is greater than or equal to the provided one.

**Example**

```ts
import { isGreaterThanOrEqualTo } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(isGreaterThanOrEqualTo(2n, 3n), false)
assert.deepStrictEqual(isGreaterThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(isGreaterThanOrEqualTo(4n, 3n), true)
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L314)

Since v2.0.0