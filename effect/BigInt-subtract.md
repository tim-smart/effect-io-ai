Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.subtract

Provides a subtraction operation on `bigint`s.

**When to use**

Use to subtract one `bigint` value from another.

**Example** (Subtracting bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.subtract(2n, 3n), -1n)
```

**Signature**

```ts
declare const subtract: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L152)

Since v2.0.0