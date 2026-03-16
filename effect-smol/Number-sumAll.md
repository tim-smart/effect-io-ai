Package: `effect`<br />
Module: `Number`<br />

## Number.sumAll

Takes an `Iterable` of `number`s and returns their sum as a single `number`.

**Example**

```ts
import { sumAll } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(sumAll([2, 3, 4]), 9)
```

**Signature**

```ts
declare const sumAll: (collection: Iterable<number>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L443)

Since v2.0.0