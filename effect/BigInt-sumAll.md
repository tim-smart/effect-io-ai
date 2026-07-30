Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sumAll

Takes an `Iterable` of `bigint`s and returns their sum as a single `bigint

**Example**

```ts
import * as assert from "node:assert"
import { sumAll } from "effect/BigInt"

assert.deepStrictEqual(sumAll([2n, 3n, 4n]), 9n)
```

**Signature**

```ts
declare const sumAll: (collection: Iterable<bigint>) => bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L524)

Since v2.0.0