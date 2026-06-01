Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isLessThanOrEqualTo

Returns a function that checks if a given `bigint` is less than or equal to the provided one.

**When to use**

Use to test whether one `bigint` is less than or equal to another.

**Example** (Checking less-than-or-equal comparisons)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.isLessThanOrEqualTo(2n, 3n), true)
assert.deepStrictEqual(BigInt.isLessThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(BigInt.isLessThanOrEqualTo(4n, 3n), false)
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L428)

Since v4.0.0