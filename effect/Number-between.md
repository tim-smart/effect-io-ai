# between

Checks if a `number` is between a `minimum` and `maximum` value (inclusive).

To import and use `between` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.between
```

**Example**

```ts
import { between } from 'effect/Number'

assert.deepStrictEqual(between(0, 5)(3), true)
assert.deepStrictEqual(between(0, 5)(-1), false)
assert.deepStrictEqual(between(0, 5)(6), false)
```

**Signature**

```ts
export declare const between: {
  (minimum: number, maximum: number): (self: number) => boolean
  (self: number, minimum: number, maximum: number): boolean
}
```
