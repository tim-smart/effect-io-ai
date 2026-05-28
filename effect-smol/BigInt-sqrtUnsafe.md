Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sqrtUnsafe

Returns the integer square root of a non-negative `bigint`.

**When to use**

Use when the input is known to be non-negative and invalid input should throw.

**Details**

For non-perfect squares, returns the largest `bigint` whose square is less
than or equal to the input.

**Gotchas**

Throws a `RangeError` if the input is negative.

**Example** (Calculating square roots unsafely)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.sqrtUnsafe(4n), 2n)
assert.deepStrictEqual(BigInt.sqrtUnsafe(9n), 3n)
assert.deepStrictEqual(BigInt.sqrtUnsafe(16n), 4n)
```

**See**

- `sqrt` for returning `Option.none` when the input is negative

**Signature**

```ts
declare const sqrtUnsafe: (n: bigint) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L755)

Since v4.0.0