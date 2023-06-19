# SemigroupSum

`number` semigroup under addition.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { SemigroupSum } from '@effect/data/Number'

assert.deepStrictEqual(SemigroupSum.combine(2, 3), 5)
```

**Signature**

```ts
export declare const SemigroupSum: semigroup.Semigroup<number>
```
