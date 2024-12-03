# decrement

Decrements a number by `1n`.

To import and use `decrement` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.decrement
```

**Example**

```ts
import { decrement } from "effect/BigInt"

assert.deepStrictEqual(decrement(3n), 2n)
```

**Signature**

```ts
export declare const decrement: (n: bigint) => bigint
```
