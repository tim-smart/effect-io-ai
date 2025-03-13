Package: `@effect/typeclass`<br />
Module: `Boolean`<br />

## Boolean.SemigroupEvery

`boolean` semigroup under conjunction.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupEvery } from "@effect/typeclass/data/Boolean"

assert.deepStrictEqual(SemigroupEvery.combine(true, true), true)
assert.deepStrictEqual(SemigroupEvery.combine(true, false), false)
assert.deepStrictEqual(SemigroupEvery.combine(false, true), false)
assert.deepStrictEqual(SemigroupEvery.combine(false, false), false)
```

**Signature**

```ts
declare const SemigroupEvery: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L24)

Since v0.24.0