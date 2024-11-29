# multiplyAll

Takes an `Iterable` of `number`s and returns their multiplication as a single `number`.

To import and use `multiplyAll` from the "Number" module:

ts
import \* as Number from "effect/Number"
// Can be accessed like this
Number.multiplyAll
undefined

**Example**

```ts
import { multiplyAll } from "effect/Number"

assert.deepStrictEqual(multiplyAll([2, 3, 4]), 24)
```

**Signature**

```ts
export declare const multiplyAll: (collection: Iterable<number>) => number
```
