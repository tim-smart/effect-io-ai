Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.lcm

Determines the least common multiple of two `bigint`s.

**When to use**

Use to compute the least common multiple of two integer values.

**Example** (Calculating least common multiples)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.lcm(2n, 3n), 6n)
assert.deepStrictEqual(BigInt.lcm(2n, 4n), 4n)
assert.deepStrictEqual(BigInt.lcm(16n, 24n), 48n)
```

**See**

- `gcd` for computing the greatest common divisor

**Signature**

```ts
declare const lcm: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L718)

Since v2.0.0