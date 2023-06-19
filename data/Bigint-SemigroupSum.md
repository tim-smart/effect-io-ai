# SemigroupSum

`bigint` semigroup under addition.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { SemigroupSum } from '@effect/data/Bigint'

assert.deepStrictEqual(SemigroupSum.combine(2n, 3n), 5n)
```

**Signature**

```ts
export declare const SemigroupSum: semigroup.Semigroup<bigint>
```
