# SemigroupMax

A `Semigroup` that uses the maximum between two values.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { SemigroupMax } from '@effect/data/Bigint'

assert.deepStrictEqual(SemigroupMax.combine(2n, 3n), 3n)
```

**Signature**

```ts
export declare const SemigroupMax: semigroup.Semigroup<bigint>
```
