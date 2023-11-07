# lessThanOrEqualTo

Returns a function that checks if a given `number` is less than or equal to the provided one.

To import and use `lessThanOrEqualTo` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.lessThanOrEqualTo
```

**Example**

```ts
import { lessThanOrEqualTo } from 'effect/Number'

assert.deepStrictEqual(lessThanOrEqualTo(2, 3), true)
assert.deepStrictEqual(lessThanOrEqualTo(3, 3), true)
assert.deepStrictEqual(lessThanOrEqualTo(4, 3), false)
```

**Signature**

```ts
export declare const lessThanOrEqualTo: {
  (that: number): (self: number) => boolean
  (self: number, that: number): boolean
}
```
