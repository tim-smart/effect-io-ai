# gcd

Determines the greatest common divisor of two `bigint`s.

To import and use `gcd` from the "BigInt" module:

ts
import \* as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.gcd
undefined

**Example**

```ts
import { gcd } from "effect/BigInt"

assert.deepStrictEqual(gcd(2n, 3n), 1n)
assert.deepStrictEqual(gcd(2n, 4n), 2n)
assert.deepStrictEqual(gcd(16n, 24n), 8n)
```

**Signature**

```ts
export declare const gcd: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
