# SemigroupEvery

`boolean` semigroup under conjunction.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { SemigroupEvery } from '@effect/data/Boolean'

assert.deepStrictEqual(SemigroupEvery.combine(true, true), true)
assert.deepStrictEqual(SemigroupEvery.combine(true, false), false)
assert.deepStrictEqual(SemigroupEvery.combine(false, true), false)
assert.deepStrictEqual(SemigroupEvery.combine(false, false), false)
```

**Signature**

```ts
export declare const SemigroupEvery: semigroup.Semigroup<boolean>
```
