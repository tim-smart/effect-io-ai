Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.divide

Safely divides one `bigint` by another.

Uses JavaScript `bigint` division, so non-exact quotients are truncated
toward zero. Returns `Option.none()` when the divisor is `0n`.

**Example** (Dividing bigints safely)

```ts
import { BigInt, Option } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.divide(6n, 3n), Option.some(2n))
assert.deepStrictEqual(BigInt.divide(6n, 0n), Option.none())
```

**Signature**

```ts
declare const divide: { (that: bigint): (self: bigint) => Option.Option<bigint>; (self: bigint, that: bigint): Option.Option<bigint>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L138)

Since v2.0.0