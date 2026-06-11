Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.multiplyAll

Takes an `Iterable` of `bigint`s and returns their product as a single `bigint`. Returns `1n` for an empty iterable.

**When to use**

Use to multiply all `bigint` values in an iterable.

**Example** (Multiplying iterable bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.multiplyAll([2n, 3n, 4n]), 24n)
```

**See**

- `multiply` for multiplying two `bigint` values
- `ReducerMultiply` for multiplying through APIs that consume a `Reducer`

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<bigint>) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L799)

Since v2.0.0