# SemigroupXor

`boolean` semigroup under exclusive disjunction.

To import and use `SemigroupXor` from the "Boolean" module:

```ts
import * as Boolean from '@effect/data/Boolean'

// Can be accessed like this
Boolean.SemigroupXor
```

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
