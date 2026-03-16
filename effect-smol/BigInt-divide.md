Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.divide

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

Returns `Option.none()` if the divisor is `0n`.

**Example**

```ts
import { divide } from "effect/BigInt"
import * as assert from "node:assert"

import { Option } from "effect"

assert.deepStrictEqual(divide(6n, 3n), Option.some(2n))
assert.deepStrictEqual(divide(6n, 0n), Option.none())
```

**Signature**

```ts
declare const divide: { (that: bigint): (self: bigint) => Option.Option<bigint>; (self: bigint, that: bigint): Option.Option<bigint>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L136)

Since v2.0.0