# SemigroupMultiply

`number` semigroup under multiplication.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { SemigroupMultiply } from '@effect/data/Number'

assert.deepStrictEqual(SemigroupMultiply.combine(2, 3), 6)
```

**Signature**

```ts
export declare const SemigroupMultiply: semigroup.Semigroup<number>
```
