Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.SemigroupMin

A `Semigroup` that uses the minimum between two values.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupMin } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(SemigroupMin.combine(2, 3), 2)
```

**Signature**

```ts
declare const SemigroupMin: semigroup.Semigroup<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L80)

Since v0.24.0