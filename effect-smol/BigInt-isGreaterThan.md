Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isGreaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**When to use**

Use to test whether one `bigint` is strictly greater than another.

**Example** (Checking greater-than comparisons)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.isGreaterThan(2n, 3n), false)
assert.deepStrictEqual(BigInt.isGreaterThan(3n, 3n), false)
assert.deepStrictEqual(BigInt.isGreaterThan(4n, 3n), true)
```

**Signature**

```ts
declare const isGreaterThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L453)

Since v4.0.0