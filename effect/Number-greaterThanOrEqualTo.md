# greaterThanOrEqualTo

Returns a function that checks if a given `number` is greater than or equal to the provided one.

To import and use `greaterThanOrEqualTo` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.greaterThanOrEqualTo
```

**Example**

```ts
import { greaterThanOrEqualTo } from "effect/Number"

assert.deepStrictEqual(greaterThanOrEqualTo(2, 3), false)
assert.deepStrictEqual(greaterThanOrEqualTo(3, 3), true)
assert.deepStrictEqual(greaterThanOrEqualTo(4, 3), true)
```

**Signature**

```ts
export declare const greaterThanOrEqualTo: {
  (that: number): (self: number) => boolean
  (self: number, that: number): boolean
}
```
