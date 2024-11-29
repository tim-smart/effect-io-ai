# SemigroupEvery

`boolean` semigroup under conjunction.

To import and use `SemigroupEvery` from the "Boolean" module:

ts
import \* as Boolean from "@effect/typeclass/data/Boolean"
// Can be accessed like this
Boolean.SemigroupEvery
undefined

**Example**

```ts
import { SemigroupEvery } from "@effect/typeclass/data/Boolean"

assert.deepStrictEqual(SemigroupEvery.combine(true, true), true)
assert.deepStrictEqual(SemigroupEvery.combine(true, false), false)
assert.deepStrictEqual(SemigroupEvery.combine(false, true), false)
assert.deepStrictEqual(SemigroupEvery.combine(false, false), false)
```

**Signature**

```ts
export declare const SemigroupEvery: semigroup.Semigroup<boolean>
```
