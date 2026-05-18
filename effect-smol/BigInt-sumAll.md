Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sumAll

Takes an `Iterable` of `bigint`s and returns their sum as a single `bigint`.

Returns `0n` for an empty iterable.

**Example** (Summing iterable bigints)

```ts
import { sumAll } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(sumAll([2n, 3n, 4n]), 9n)
```

**Signature**

```ts
declare const sumAll: (collection: Iterable<bigint>) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L601)

Since v2.0.0