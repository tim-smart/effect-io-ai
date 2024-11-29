# lessThanOrEqualTo

Returns a function that checks if a given `bigint` is less than or equal to the provided one.

To import and use `lessThanOrEqualTo` from the "BigInt" module:

ts
import \* as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.lessThanOrEqualTo
undefined

**Example**

```ts
import { lessThanOrEqualTo } from "effect/BigInt"

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
