# SemigroupMultiply

`number` semigroup under multiplication.

To import and use `SemigroupMultiply` from the "Number" module:

```ts
import * as Number from '@effect/data/Number'

// Can be accessed like this
Number.SemigroupMultiply
```

**Example**

```ts
import { SemigroupMultiply } from '@effect/data/Number'

assert.deepStrictEqual(SemigroupMultiply.combine(2, 3), 6)
```

**Signature**

```ts
export declare const SemigroupMultiply: semigroup.Semigroup<number>
```
