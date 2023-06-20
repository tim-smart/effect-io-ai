# SemigroupMin

A `Semigroup` that uses the minimum between two values.

To import and use `SemigroupMin` from the "Number" module:

```ts
import * as Number from '@effect/data/Number'

// Can be accessed like this
Number.SemigroupMin
```

**Example**

```ts
import { SemigroupMin } from '@effect/data/Number'

assert.deepStrictEqual(SemigroupMin.combine(2, 3), 2)
```

**Signature**

```ts
export declare const SemigroupMin: semigroup.Semigroup<number>
```
