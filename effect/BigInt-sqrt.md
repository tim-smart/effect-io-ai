# sqrt

Determines the square root of a given `bigint` safely. Returns `none` if the given `bigint` is negative.

To import and use `sqrt` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.sqrt
```

**Example**

```ts
import { BigInt, Option } from "effect"

assert.deepStrictEqual(BigInt.sqrt(4n), Option.some(2n))
assert.deepStrictEqual(BigInt.sqrt(9n), Option.some(3n))
assert.deepStrictEqual(BigInt.sqrt(16n), Option.some(4n))
assert.deepStrictEqual(BigInt.sqrt(-1n), Option.none())
```

**Signature**

```ts
export declare const sqrt: (n: bigint) => Option.Option<bigint>
```
