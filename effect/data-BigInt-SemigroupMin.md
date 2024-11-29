# SemigroupMin

A `Semigroup` that uses the minimum between two values.

To import and use `SemigroupMin` from the "BigInt" module:

ts
import \* as BigInt from "@effect/typeclass/data/BigInt"
// Can be accessed like this
BigInt.SemigroupMin
undefined

**Example**

```ts
import { SemigroupMin } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(SemigroupMin.combine(2n, 3n), 2n)
```

**Signature**

```ts
export declare const SemigroupMin: semigroup.Semigroup<bigint>
```
