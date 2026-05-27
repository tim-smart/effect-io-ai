Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sum

Provides an addition operation on `bigint`s.

**When to use**

Use to add two `bigint` values.

**Example** (Adding bigints)

```ts
import { BigInt } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.sum(2n, 3n), 5n)
```

**See**

- `sumAll` for summing an iterable of `bigint` values

**Signature**

```ts
declare const sum: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L160)

Since v2.0.0