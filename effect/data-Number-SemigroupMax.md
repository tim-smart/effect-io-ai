## SemigroupMax

A `Semigroup` that uses the maximum between two values.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupMax } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(SemigroupMax.combine(2, 3), 3)
```

**Signature**

```ts
declare const SemigroupMax: semigroup.Semigroup<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L96)

Since v0.24.0