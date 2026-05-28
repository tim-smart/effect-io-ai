Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isGreaterThanOrEqualTo

Returns a function that checks if a given `bigint` is greater than or equal to the provided one.

**When to use**

Use to test whether one `bigint` is greater than or equal to another.

**Example** (Checking greater-than-or-equal comparisons)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.isGreaterThanOrEqualTo(2n, 3n), false)
assert.deepStrictEqual(BigInt.isGreaterThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(BigInt.isGreaterThanOrEqualTo(4n, 3n), true)
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L479)

Since v4.0.0