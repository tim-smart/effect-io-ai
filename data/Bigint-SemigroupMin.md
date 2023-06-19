# SemigroupMin

A `Semigroup` that uses the minimum between two values.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { SemigroupMin } from '@effect/data/Bigint'

assert.deepStrictEqual(SemigroupMin.combine(2n, 3n), 2n)
```

**Signature**

```ts
export declare const SemigroupMin: semigroup.Semigroup<bigint>
```
