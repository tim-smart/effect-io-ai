Package: `@effect/typeclass`<br />
Module: `Boolean`<br />

## Boolean.SemigroupEqv

`boolean` semigroup under equivalence.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupEqv } from "@effect/typeclass/data/Boolean"

assert.deepStrictEqual(SemigroupEqv.combine(true, true), true)
assert.deepStrictEqual(SemigroupEqv.combine(true, false), false)
assert.deepStrictEqual(SemigroupEqv.combine(false, true), false)
assert.deepStrictEqual(SemigroupEqv.combine(false, false), true)
```

**Signature**

```ts
declare const SemigroupEqv: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L107)

Since v0.24.0