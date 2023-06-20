# SemigroupMax

A `Semigroup` that uses the maximum between two values.

To import and use `SemigroupMax` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.SemigroupMax
```

**Example**

```ts
import { SemigroupMax } from '@effect/data/Bigint'

assert.deepStrictEqual(SemigroupMax.combine(2n, 3n), 3n)
```

**Signature**

```ts
export declare const SemigroupMax: semigroup.Semigroup<bigint>
```
