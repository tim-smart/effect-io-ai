Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sum

Provides an addition operation on `bigint`s.

**Example**

```ts
import * as assert from "node:assert"
import { sum } from "effect/BigInt"

assert.deepStrictEqual(sum(2n, 3n), 5n)
```

**Signature**

```ts
declare const sum: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L51)

Since v2.0.0