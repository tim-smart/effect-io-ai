# SemigroupXor

`boolean` semigroup under exclusive disjunction.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { SemigroupXor } from '@effect/data/Boolean'

assert.deepStrictEqual(SemigroupXor.combine(true, true), false)
assert.deepStrictEqual(SemigroupXor.combine(true, false), true)
assert.deepStrictEqual(SemigroupXor.combine(false, true), true)
assert.deepStrictEqual(SemigroupXor.combine(false, false), false)
```

**Signature**

```ts
export declare const SemigroupXor: semigroup.Semigroup<boolean>
```
