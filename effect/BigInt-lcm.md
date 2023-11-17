# lcm

Determines the least common multiple of two `bigint`s.

To import and use `lcm` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.lcm
```

**Example**

```ts
import { lcm } from "effect/BigInt"

assert.deepStrictEqual(lcm(2n, 3n), 6n)
assert.deepStrictEqual(lcm(2n, 4n), 4n)
assert.deepStrictEqual(lcm(16n, 24n), 48n)
```

**Signature**

```ts
export declare const lcm: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
