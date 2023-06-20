# clamp

Restricts the given `number` to be within the range specified by the `minimum` and `maximum` values.

- If the `number` is less than the `minimum` value, the function returns the `minimum` value.
- If the `number` is greater than the `maximum` value, the function returns the `maximum` value.
- Otherwise, it returns the original `number`.

To import and use `clamp` from the "Number" module:

```ts
import * as Number from '@effect/data/Number'

// Can be accessed like this
Number.clamp
```

**Example**

```ts
import { clamp } from '@effect/data/Number'

assert.deepStrictEqual(clamp(0, 5)(3), 3)
assert.deepStrictEqual(clamp(0, 5)(-1), 0)
assert.deepStrictEqual(clamp(0, 5)(6), 5)
```

**Signature**

```ts
export declare const clamp: {
  (minimum: number, maximum: number): (self: number) => number
  (self: number, minimum: number, maximum: number): number
}
```
