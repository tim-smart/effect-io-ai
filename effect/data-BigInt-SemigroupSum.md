# SemigroupSum

`bigint` semigroup under addition.

To import and use `SemigroupSum` from the "BigInt" module:

ts
import \* as BigInt from "@effect/typeclass/data/BigInt"
// Can be accessed like this
BigInt.SemigroupSum
undefined

**Example**

```ts
import { SemigroupSum } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(SemigroupSum.combine(2n, 3n), 5n)
```

**Signature**

```ts
export declare const SemigroupSum: semigroup.Semigroup<bigint>
```
