Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.lcm

Determines the least common multiple of two `bigint`s.

**Example**

```ts
import * as assert from "node:assert"
import { lcm } from "effect/BigInt"

assert.deepStrictEqual(lcm(2n, 3n), 6n)
assert.deepStrictEqual(lcm(2n, 4n), 4n)
assert.deepStrictEqual(lcm(16n, 24n), 48n)
```

**Signature**

```ts
declare const lcm: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L455)

Since v2.0.0