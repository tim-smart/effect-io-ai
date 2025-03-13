Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.unsafeDivide

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

Throws a `RangeError` if the divisor is `0n`.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeDivide } from "effect/BigInt"

assert.deepStrictEqual(unsafeDivide(6n, 3n), 2n)
assert.deepStrictEqual(unsafeDivide(6n, 4n), 1n)
```

**Signature**

```ts
declare const unsafeDivide: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L142)

Since v2.0.0