# SemigroupMax

A `Semigroup` that uses the maximum between two values.

To import and use `SemigroupMax` from the "BigInt" module:

```ts
import * as BigInt from "@effect/typeclass/data/BigInt"
// Can be accessed like this
BigInt.SemigroupMax
```

**Example**

```ts
import { SemigroupMax } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(SemigroupMax.combine(2n, 3n), 3n)
```

**Signature**

```ts
export declare const SemigroupMax: semigroup.Semigroup<bigint>
```
