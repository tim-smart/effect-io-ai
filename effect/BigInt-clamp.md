Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.clamp

Restricts the given `bigint` to be within the range specified by the `minimum` and `maximum` values.

**When to use**

Use to force a `bigint` into an inclusive range.

**Details**

If the `bigint` is less than the minimum, the function returns the minimum.
If the `bigint` is greater than the maximum, the function returns the
maximum. Otherwise, it returns the original `bigint`.

**Example** (Clamping a bigint to bounds)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

const clamp = BigInt.clamp({ minimum: 1n, maximum: 5n })

assert.equal(clamp(3n), 3n)
assert.equal(clamp(0n), 1n)
assert.equal(clamp(6n), 5n)
```

**See**

- `between` for checking whether a `bigint` is already inside a range

**Signature**

```ts
declare const clamp: { (options: { minimum: bigint; maximum: bigint; }): (self: bigint) => bigint; (self: bigint, options: { minimum: bigint; maximum: bigint; }): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L493)

Since v2.0.0