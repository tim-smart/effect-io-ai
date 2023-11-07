# multiplyAll

Takes an `Iterable` of `bigint`s and returns their multiplication as a single `number`.

To import and use `multiplyAll` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.multiplyAll
```

**Example**

```ts
import { multiplyAll } from 'effect/BigInt'

assert.deepStrictEqual(multiplyAll([2n, 3n, 4n]), 24n)
```

**Signature**

```ts
export declare const multiplyAll: (collection: Iterable<bigint>) => bigint
```
