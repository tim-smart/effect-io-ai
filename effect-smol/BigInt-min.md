Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.min

Returns the minimum between two `bigint`s.

**When to use**

Use to select the smaller of two `bigint` values.

**Example** (Finding the minimum bigint)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.min(2n, 3n), 2n)
```

**See**

- `max` for selecting the larger value

**Signature**

```ts
declare const min: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L581)

Since v2.0.0