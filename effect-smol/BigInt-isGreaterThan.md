Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isGreaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**Example**

```ts
import { isGreaterThan } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(isGreaterThan(2n, 3n), false)
assert.deepStrictEqual(isGreaterThan(3n, 3n), false)
assert.deepStrictEqual(isGreaterThan(4n, 3n), true)
```

**Signature**

```ts
declare const isGreaterThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L296)

Since v2.0.0