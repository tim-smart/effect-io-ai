# sumAll

Takes an `Iterable` of `bigint`s and returns their sum as a single `bigint

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { sumAll } from '@effect/data/Bigint'

assert.deepStrictEqual(sumAll([2n, 3n, 4n]), 9n)
```

**Signature**

```ts
export declare const sumAll: (collection: Iterable<bigint>) => bigint
```
