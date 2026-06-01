Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sumAll

Takes an `Iterable` of `bigint`s and returns their sum as a single `bigint`. Returns `0n` for an empty iterable.

**When to use**

Use when you want an immediate aggregate from an iterable instead of a
folding reducer owned by another API.

**Example** (Summing iterable bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.sumAll([2n, 3n, 4n]), 9n)
```

**See**

- `sum` for adding two `bigint` values
- `ReducerSum` for summing through APIs that consume a `Reducer`

**Signature**

```ts
declare const sumAll: (collection: Iterable<bigint>) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L828)

Since v2.0.0