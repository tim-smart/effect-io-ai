# unsafeDivide

Provides a division operation on `number`s.

Throws a `RangeError` if the divisor is `0`.

To import and use `unsafeDivide` from the "Number" module:

ts
import \* as Number from "effect/Number"
// Can be accessed like this
Number.unsafeDivide
undefined

**Example**

```ts
import { unsafeDivide } from "effect/Number"

assert.deepStrictEqual(unsafeDivide(6, 3), 2)
```

**Signature**

```ts
export declare const unsafeDivide: { (that: number): (self: number) => number; (self: number, that: number): number }
```
