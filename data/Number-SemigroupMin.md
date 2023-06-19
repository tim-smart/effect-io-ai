# SemigroupMin

A `Semigroup` that uses the minimum between two values.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { SemigroupMin } from '@effect/data/Number'

assert.deepStrictEqual(SemigroupMin.combine(2, 3), 2)
```

**Signature**

```ts
export declare const SemigroupMin: semigroup.Semigroup<number>
```
