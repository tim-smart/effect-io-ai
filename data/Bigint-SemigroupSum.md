# SemigroupSum

`bigint` semigroup under addition.

To import and use `SemigroupSum` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.SemigroupSum
```

**Example**

```ts
import { SemigroupSum } from '@effect/data/Bigint'

assert.deepStrictEqual(SemigroupSum.combine(2n, 3n), 5n)
```

**Signature**

```ts
export declare const SemigroupSum: semigroup.Semigroup<bigint>
```
