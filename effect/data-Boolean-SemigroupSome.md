## SemigroupSome

`boolean` semigroup under disjunction.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupSome } from "@effect/typeclass/data/Boolean"

assert.deepStrictEqual(SemigroupSome.combine(true, true), true)
assert.deepStrictEqual(SemigroupSome.combine(true, false), true)
assert.deepStrictEqual(SemigroupSome.combine(false, true), true)
assert.deepStrictEqual(SemigroupSome.combine(false, false), false)
```

**Signature**

```ts
declare const SemigroupSome: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L56)

Since v0.24.0