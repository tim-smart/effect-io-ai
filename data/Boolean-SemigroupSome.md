# SemigroupSome

`boolean` semigroup under disjunction.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { SemigroupSome } from '@effect/data/Boolean'

assert.deepStrictEqual(SemigroupSome.combine(true, true), true)
assert.deepStrictEqual(SemigroupSome.combine(true, false), true)
assert.deepStrictEqual(SemigroupSome.combine(false, true), true)
assert.deepStrictEqual(SemigroupSome.combine(false, false), false)
```

**Signature**

```ts
export declare const SemigroupSome: semigroup.Semigroup<boolean>
```
