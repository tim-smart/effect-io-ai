# decrement

Decrements a number by `1n`.

To import and use `decrement` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.decrement
```

**Example**

```ts
import { decrement } from '@effect/data/Bigint'

assert.deepStrictEqual(decrement(3n), 2n)
```

**Signature**

```ts
export declare const decrement: (n: bigint) => bigint
```
