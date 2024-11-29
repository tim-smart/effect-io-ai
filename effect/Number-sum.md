# sum

Provides an addition operation on `number`s.

To import and use `sum` from the "Number" module:

ts
import \* as Number from "effect/Number"
// Can be accessed like this
Number.sum
undefined

**Example**

```ts
import { sum } from "effect/Number"

assert.deepStrictEqual(sum(2, 3), 5)
```

**Signature**

```ts
export declare const sum: { (that: number): (self: number) => number; (self: number, that: number): number }
```
