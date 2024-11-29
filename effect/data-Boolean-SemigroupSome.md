# SemigroupSome

`boolean` semigroup under disjunction.

To import and use `SemigroupSome` from the "Boolean" module:

ts
import \* as Boolean from "@effect/typeclass/data/Boolean"
// Can be accessed like this
Boolean.SemigroupSome
undefined

**Example**

```ts
import { SemigroupSome } from "@effect/typeclass/data/Boolean"

assert.deepStrictEqual(SemigroupSome.combine(true, true), true)
assert.deepStrictEqual(SemigroupSome.combine(true, false), true)
assert.deepStrictEqual(SemigroupSome.combine(false, true), true)
assert.deepStrictEqual(SemigroupSome.combine(false, false), false)
```

**Signature**

```ts
export declare const SemigroupSome: semigroup.Semigroup<boolean>
```
