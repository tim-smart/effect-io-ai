Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sqrt

Determines the square root of a given `bigint` safely. Returns `none` if the given `bigint` is negative.

**Example**

```ts
import * as assert from "node:assert"
import { BigInt, Option } from "effect"

assert.deepStrictEqual(BigInt.sqrt(4n), Option.some(2n))
assert.deepStrictEqual(BigInt.sqrt(9n), Option.some(3n))
assert.deepStrictEqual(BigInt.sqrt(16n), Option.some(4n))
assert.deepStrictEqual(BigInt.sqrt(-1n), Option.none())
```

**Signature**

```ts
declare const sqrt: (n: bigint) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L504)

Since v2.0.0