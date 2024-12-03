# between

Checks if a `bigint` is between a `minimum` and `maximum` value (inclusive).

To import and use `between` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.between
```

**Example**

```ts
import { BigInt } from "effect"

const between = BigInt.between({ minimum: 0n, maximum: 5n })

assert.deepStrictEqual(between(3n), true)
assert.deepStrictEqual(between(-1n), false)
assert.deepStrictEqual(between(6n), false)
```

**Signature**

```ts
export declare const between: {
  (options: { minimum: bigint; maximum: bigint }): (self: bigint) => boolean
  (self: bigint, options: { minimum: bigint; maximum: bigint }): boolean
}
```
