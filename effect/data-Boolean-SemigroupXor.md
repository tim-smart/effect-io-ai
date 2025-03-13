Package: `@effect/typeclass`<br />
Module: `Boolean`<br />

## Boolean.SemigroupXor

`boolean` semigroup under exclusive disjunction.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupXor } from "@effect/typeclass/data/Boolean"

assert.deepStrictEqual(SemigroupXor.combine(true, true), false)
assert.deepStrictEqual(SemigroupXor.combine(true, false), true)
assert.deepStrictEqual(SemigroupXor.combine(false, true), true)
assert.deepStrictEqual(SemigroupXor.combine(false, false), false)
```

**Signature**

```ts
declare const SemigroupXor: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L88)

Since v0.24.0