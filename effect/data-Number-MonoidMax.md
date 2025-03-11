## MonoidMax

A `Monoid` that uses the maximum between two values.

The `empty` value is `Infinity`.

**Example**

```ts
import * as assert from "node:assert"
import { MonoidMax } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(MonoidMax.combine(2, 3), 3)
assert.deepStrictEqual(MonoidMax.combine(2, MonoidMax.empty), 2)
```

**Signature**

```ts
declare const MonoidMax: monoid.Monoid<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L172)

Since v0.24.0