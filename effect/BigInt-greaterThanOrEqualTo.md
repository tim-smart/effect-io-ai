Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.greaterThanOrEqualTo

Returns a function that checks if a given `bigint` is greater than or equal to the provided one.

**Example**

```ts
import * as assert from "node:assert"
import { greaterThanOrEqualTo } from "effect/BigInt"

assert.deepStrictEqual(greaterThanOrEqualTo(2n, 3n), false)
assert.deepStrictEqual(greaterThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(greaterThanOrEqualTo(4n, 3n), true)
```

**Signature**

```ts
declare const greaterThanOrEqualTo: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L270)

Since v2.0.0