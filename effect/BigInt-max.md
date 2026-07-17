Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.max

Returns the maximum between two `bigint`s.

**When to use**

Use to select the larger of two `bigint` values.

**Example** (Finding the maximum bigint)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.max(2n, 3n), 3n)
```

**See**

- `min` for selecting the smaller value

**Signature**

```ts
declare const max: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L551)

Since v2.0.0