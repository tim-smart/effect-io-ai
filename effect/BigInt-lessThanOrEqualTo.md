## lessThanOrEqualTo

Returns a function that checks if a given `bigint` is less than or equal to the provided one.

**Example**

```ts
import * as assert from "node:assert"
import { lessThanOrEqualTo } from "effect/BigInt"

assert.deepStrictEqual(lessThanOrEqualTo(2n, 3n), true)
assert.deepStrictEqual(lessThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(lessThanOrEqualTo(4n, 3n), false)
```

**Signature**

```ts
declare const lessThanOrEqualTo: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L228)

Since v2.0.0