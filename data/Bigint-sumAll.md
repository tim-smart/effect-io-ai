# sumAll

Takes an `Iterable` of `bigint`s and returns their sum as a single `bigint

To import and use `sumAll` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.sumAll
```

**Example**

```ts
import { sumAll } from '@effect/data/Bigint'

assert.deepStrictEqual(sumAll([2n, 3n, 4n]), 9n)
```

**Signature**

```ts
export declare const sumAll: (collection: Iterable<bigint>) => bigint
```
