# greaterThanOrEqualTo

Returns a function that checks if a given `number` is greater than or equal to the provided one.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { greaterThanOrEqualTo } from '@effect/data/Number'

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
