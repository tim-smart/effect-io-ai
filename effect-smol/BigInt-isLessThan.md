Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.isLessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**Example**

```ts
import { isLessThan } from "effect/BigInt"
import * as assert from "node:assert"

assert.deepStrictEqual(isLessThan(2n, 3n), true)
assert.deepStrictEqual(isLessThan(3n, 3n), false)
assert.deepStrictEqual(isLessThan(4n, 3n), false)
```

**Signature**

```ts
declare const isLessThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L254)

Since v2.0.0