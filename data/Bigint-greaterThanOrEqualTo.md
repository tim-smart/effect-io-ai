# greaterThanOrEqualTo

Returns a function that checks if a given `bigint` is greater than or equal to the provided one.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { greaterThanOrEqualTo } from '@effect/data/Bigint'

assert.deepStrictEqual(greaterThanOrEqualTo(2n, 3n), false)
assert.deepStrictEqual(greaterThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(greaterThanOrEqualTo(4n, 3n), true)
```

**Signature**

```ts
export declare const greaterThanOrEqualTo: {
  (that: bigint): (self: bigint) => boolean
  (self: bigint, that: bigint): boolean
}
```
