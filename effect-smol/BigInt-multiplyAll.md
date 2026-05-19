Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.multiplyAll

Takes an `Iterable` of `bigint`s and returns their product as a single
`bigint`.

Returns `1n` for an empty iterable.

**Example** (Multiplying iterable bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.multiplyAll([2n, 3n, 4n]), 24n)
```

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<bigint>) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L625)

Since v2.0.0