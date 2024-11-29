# SemigroupMax

A `Semigroup` that uses the maximum between two values.

To import and use `SemigroupMax` from the "Number" module:

ts
import \* as Number from "@effect/typeclass/data/Number"
// Can be accessed like this
Number.SemigroupMax
undefined

**Example**

```ts
import { SemigroupMax } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(SemigroupMax.combine(2, 3), 3)
```

**Signature**

```ts
export declare const SemigroupMax: semigroup.Semigroup<number>
```
