## MonoidMin

A `Monoid` that uses the minimum between two values.

The `empty` value is `-Infinity`.

**Example**

```ts
import * as assert from "node:assert"
import { MonoidMin } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(MonoidMin.combine(2, 3), 2)
assert.deepStrictEqual(MonoidMin.combine(2, MonoidMin.empty), 2)
```

**Signature**

```ts
declare const MonoidMin: monoid.Monoid<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L153)

Since v0.24.0