# sumAll

Takes an `Iterable` of `bigint`s and returns their sum as a single `bigint

To import and use `sumAll` from the "BigInt" module:

ts
import \* as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.sumAll
undefined

**Example**

```ts
import { sumAll } from "effect/BigInt"

assert.deepStrictEqual(sumAll([2n, 3n, 4n]), 9n)
```

**Signature**

```ts
export declare const sumAll: (collection: Iterable<bigint>) => bigint
```
