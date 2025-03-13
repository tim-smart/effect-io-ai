Package: `effect`<br />
Module: `Number`<br />

## Number.sumAll

Takes an `Iterable` of `number`s and returns their sum as a single `number`.

**Example**

```ts
import * as assert from "node:assert"
import { sumAll } from "effect/Number"

assert.deepStrictEqual(sumAll([2, 3, 4]), 9)
```

**Signature**

```ts
declare const sumAll: (collection: Iterable<number>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L391)

Since v2.0.0