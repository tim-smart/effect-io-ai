Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.multiply

Provides a multiplication operation on `bigint`s.

**When to use**

Use to multiply two `bigint` values.

**Example** (Multiplying bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.multiply(2n, 3n), 6n)
```

**See**

- `multiplyAll` for multiplying an iterable of `bigint` values

**Signature**

```ts
declare const multiply: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L128)

Since v2.0.0