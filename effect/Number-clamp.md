# clamp

Restricts the given `number` to be within the range specified by the `minimum` and `maximum` values.

- If the `number` is less than the `minimum` value, the function returns the `minimum` value.
- If the `number` is greater than the `maximum` value, the function returns the `maximum` value.
- Otherwise, it returns the original `number`.

To import and use `clamp` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.clamp
```

**Example**

```ts
import { Number } from "effect"

const clamp = Number.clamp({ minimum: 1, maximum: 5 })

assert.equal(clamp(3), 3)
assert.equal(clamp(0), 1)
assert.equal(clamp(6), 5)
```

**Signature**

```ts
export declare const clamp: {
  (options: { minimum: number; maximum: number }): (self: number) => number
  (self: number, options: { minimum: number; maximum: number }): number
}
```
