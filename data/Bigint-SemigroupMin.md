# SemigroupMin

A `Semigroup` that uses the minimum between two values.

To import and use `SemigroupMin` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.SemigroupMin
```

**Example**

```ts
import { SemigroupMin } from '@effect/data/Bigint'

assert.deepStrictEqual(SemigroupMin.combine(2n, 3n), 2n)
```

**Signature**

```ts
export declare const SemigroupMin: semigroup.Semigroup<bigint>
```
