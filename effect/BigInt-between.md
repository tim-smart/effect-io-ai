# between

Checks if a `bigint` is between a `minimum` and `maximum` value (inclusive).

To import and use `between` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.between
```

**Example**

```ts
import { between } from 'effect/BigInt'

assert.deepStrictEqual(between(0n, 5n)(3n), true)
assert.deepStrictEqual(between(0n, 5n)(-1n), false)
assert.deepStrictEqual(between(0n, 5n)(6n), false)
```

**Signature**

```ts
export declare const between: {
  (minimum: bigint, maximum: bigint): (self: bigint) => boolean
  (self: bigint, minimum: bigint, maximum: bigint): boolean
}
```