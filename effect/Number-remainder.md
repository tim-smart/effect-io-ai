# remainder

Returns the remainder left over when one operand is divided by a second operand.

It always takes the sign of the dividend.

To import and use `remainder` from the "Number" module:

ts
import \* as Number from "effect/Number"
// Can be accessed like this
Number.remainder
undefined

**Example**

```ts
import { remainder } from "effect/Number"

assert.deepStrictEqual(remainder(2, 2), 0)
assert.deepStrictEqual(remainder(3, 2), 1)
assert.deepStrictEqual(remainder(-4, 2), -0)
```

**Signature**

```ts
export declare const remainder: { (divisor: number): (self: number) => number; (self: number, divisor: number): number }
```
