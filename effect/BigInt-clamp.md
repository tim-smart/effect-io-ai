# clamp

Restricts the given `bigint` to be within the range specified by the `minimum` and `maximum` values.

- If the `bigint` is less than the `minimum` value, the function returns the `minimum` value.
- If the `bigint` is greater than the `maximum` value, the function returns the `maximum` value.
- Otherwise, it returns the original `bigint`.

To import and use `clamp` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.clamp
```

**Example**

```ts
import { clamp } from 'effect/BigInt'

assert.deepStrictEqual(clamp(0n, 5n)(3n), 3n)
assert.deepStrictEqual(clamp(0n, 5n)(-1n), 0n)
assert.deepStrictEqual(clamp(0n, 5n)(6n), 5n)
```

**Signature**

```ts
export declare const clamp: {
  (minimum: bigint, maximum: bigint): (self: bigint) => bigint
  (self: bigint, minimum: bigint, maximum: bigint): bigint
}
```