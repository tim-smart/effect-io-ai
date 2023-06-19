# SemigroupEqv

`boolean` semigroup under equivalence.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

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
