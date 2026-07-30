Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.gcd

Determines the greatest common divisor of two `bigint`s.

**Example**

```ts
import * as assert from "node:assert"
import { gcd } from "effect/BigInt"

assert.deepStrictEqual(gcd(2n, 3n), 1n)
assert.deepStrictEqual(gcd(2n, 4n), 2n)
assert.deepStrictEqual(gcd(16n, 24n), 8n)
```

**Signature**

```ts
declare const gcd: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L427)

Since v2.0.0