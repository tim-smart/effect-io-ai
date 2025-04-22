Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.multiplyAll

Takes an `Iterable` of `bigint`s and returns their multiplication as a single `number`.

**Example**

```ts
import * as assert from "node:assert"
import { multiplyAll } from "effect/BigInt"

assert.deepStrictEqual(multiplyAll([2n, 3n, 4n]), 24n)
```

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<bigint>) => bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L546)

Since v2.0.0