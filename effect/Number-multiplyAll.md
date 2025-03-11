## multiplyAll

Takes an `Iterable` of `number`s and returns their multiplication as a single `number`.

**Example**

```ts
import * as assert from "node:assert"
import { multiplyAll } from "effect/Number"

assert.deepStrictEqual(multiplyAll([2, 3, 4]), 24)
```

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<number>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L413)

Since v2.0.0