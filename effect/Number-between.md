# between

Checks if a `number` is between a `minimum` and `maximum` value (inclusive).

To import and use `between` from the "Number" module:

ts
import \* as Number from "effect/Number"
// Can be accessed like this
Number.between
undefined

**Example**

```ts
import { Number } from "effect"

const between = Number.between({ minimum: 0, maximum: 5 })

assert.deepStrictEqual(between(3), true)
assert.deepStrictEqual(between(-1), false)
assert.deepStrictEqual(between(6), false)
```

**Signature**

```ts
export declare const between: {
  (options: { minimum: number; maximum: number }): (self: number) => boolean
  (self: number, options: { minimum: number; maximum: number }): boolean
}
```
