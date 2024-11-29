# decrement

Decrements a number by `1`.

To import and use `decrement` from the "Number" module:

ts
import \* as Number from "effect/Number"
// Can be accessed like this
Number.decrement
undefined

**Example**

```ts
import { decrement } from "effect/Number"

assert.deepStrictEqual(decrement(3), 2)
```

**Signature**

```ts
export declare const decrement: (n: number) => number
```
