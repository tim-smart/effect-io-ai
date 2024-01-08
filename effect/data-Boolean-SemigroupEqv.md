# SemigroupEqv

`boolean` semigroup under equivalence.

To import and use `SemigroupEqv` from the "Boolean" module:

```ts
import * as Boolean from "@effect/typeclass/data/Boolean"
// Can be accessed like this
Boolean.SemigroupEqv
```

**Example**

```ts
import { SemigroupEqv } from "@effect/typeclass/data/Boolean"

assert.deepStrictEqual(SemigroupEqv.combine(true, true), true)
assert.deepStrictEqual(SemigroupEqv.combine(true, false), false)
assert.deepStrictEqual(SemigroupEqv.combine(false, true), false)
assert.deepStrictEqual(SemigroupEqv.combine(false, false), true)
```

**Signature**

```ts
export declare const SemigroupEqv: semigroup.Semigroup<boolean>
```
