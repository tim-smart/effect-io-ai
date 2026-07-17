Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isLessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**When to use**

Use to test whether one `bigint` is strictly less than another.

**Example** (Checking less-than comparisons)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.isLessThan(2n, 3n), true)
assert.deepStrictEqual(BigInt.isLessThan(3n, 3n), false)
assert.deepStrictEqual(BigInt.isLessThan(4n, 3n), false)
```

**Signature**

```ts
declare const isLessThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L343)

Since v4.0.0