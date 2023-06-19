# multiplyAll

Takes an `Iterable` of `bigint`s and returns their multiplication as a single `number`.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { multiplyAll } from '@effect/data/Bigint'

assert.deepStrictEqual(multiplyAll([2n, 3n, 4n]), 24n)
```

**Signature**

```ts
export declare const multiplyAll: (collection: Iterable<bigint>) => bigint
```
