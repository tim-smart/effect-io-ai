# lessThanOrEqualTo

Returns a function that checks if a given `bigint` is less than or equal to the provided one.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { lessThanOrEqualTo } from '@effect/data/Bigint'

assert.deepStrictEqual(lessThanOrEqualTo(2n, 3n), true)
assert.deepStrictEqual(lessThanOrEqualTo(3n, 3n), true)
assert.deepStrictEqual(lessThanOrEqualTo(4n, 3n), false)
```

**Signature**

```ts
export declare const lessThanOrEqualTo: {
  (that: bigint): (self: bigint) => boolean
  (self: bigint, that: bigint): boolean
}
```
