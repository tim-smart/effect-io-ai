# SemigroupMax

A `Semigroup` that uses the maximum between two values.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { SemigroupMax } from '@effect/data/Number'

assert.deepStrictEqual(SemigroupMax.combine(2, 3), 3)
```

**Signature**

```ts
export declare const SemigroupMax: semigroup.Semigroup<number>
```
