# sqrt

Determines the square root of a given `bigint` safely. Returns `none` if the given `bigint` is negative.

To import and use `sqrt` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.sqrt
```

**Example**

```ts
import { sqrt } from 'effect/BigInt'
import * as Option from 'effect/Option'

assert.deepStrictEqual(sqrt(4n), Option.some(2n))
assert.deepStrictEqual(sqrt(9n), Option.some(3n))
assert.deepStrictEqual(sqrt(16n), Option.some(4n))
assert.deepStrictEqual(sqrt(-1n), Option.none())
```

**Signature**

```ts
export declare const sqrt: (n: bigint) => Option.Option<bigint>
```
