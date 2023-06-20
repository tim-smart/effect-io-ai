# SemigroupSome

`boolean` semigroup under disjunction.

To import and use `SemigroupSome` from the "Boolean" module:

```ts
import * as Boolean from '@effect/data/Boolean'

// Can be accessed like this
Boolean.SemigroupSome
```

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
