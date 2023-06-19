# lessThanOrEqualTo

Returns a function that checks if a given `number` is less than or equal to the provided one.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { lessThanOrEqualTo } from '@effect/data/Number'

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
