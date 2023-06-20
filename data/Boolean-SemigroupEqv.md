# SemigroupEqv

`boolean` semigroup under equivalence.

To import and use `SemigroupEqv` from the "Boolean" module:

```ts
import * as Boolean from '@effect/data/Boolean'

// Can be accessed like this
Boolean.SemigroupEqv
```

**Example**

```ts
import { SemigroupEqv } from '@effect/data/Boolean'

assert.deepStrictEqual(SemigroupEqv.combine(true, true), true)
assert.deepStrictEqual(SemigroupEqv.combine(true, false), false)
assert.deepStrictEqual(SemigroupEqv.combine(false, true), false)
assert.deepStrictEqual(SemigroupEqv.combine(false, false), true)
```

**Signature**

```ts
export declare const SemigroupEqv: semigroup.Semigroup<boolean>
```
