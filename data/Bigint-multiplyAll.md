# multiplyAll

Takes an `Iterable` of `bigint`s and returns their multiplication as a single `number`.

To import and use `multiplyAll` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.multiplyAll
```

**Example**

```ts
import { multiplyAll } from '@effect/data/Bigint'

assert.deepStrictEqual(multiplyAll([2n, 3n, 4n]), 24n)
```

**Signature**

```ts
export declare const multiplyAll: (collection: Iterable<bigint>) => bigint
```
