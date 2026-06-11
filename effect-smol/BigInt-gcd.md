Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.gcd

Determines the greatest common divisor of two `bigint`s.

**When to use**

Use to compute the greatest common divisor of two integer values.

**Example** (Calculating greatest common divisors)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.gcd(2n, 3n), 1n)
assert.deepStrictEqual(BigInt.gcd(2n, 4n), 2n)
assert.deepStrictEqual(BigInt.gcd(16n, 24n), 8n)
```

**See**

- `lcm` for computing the least common multiple

**Signature**

```ts
declare const gcd: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L625)

Since v2.0.0