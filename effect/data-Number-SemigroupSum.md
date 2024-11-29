# SemigroupSum

`number` semigroup under addition.

To import and use `SemigroupSum` from the "Number" module:

ts
import \* as Number from "@effect/typeclass/data/Number"
// Can be accessed like this
Number.SemigroupSum
undefined

**Example**

```ts
import { SemigroupSum } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(SemigroupSum.combine(2, 3), 5)
```

**Signature**

```ts
export declare const SemigroupSum: semigroup.Semigroup<number>
```
