Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**Example**

```ts
import * as assert from "node:assert"
import { lessThan } from "effect/BigInt"

assert.deepStrictEqual(lessThan(2n, 3n), true)
assert.deepStrictEqual(lessThan(3n, 3n), false)
assert.deepStrictEqual(lessThan(4n, 3n), false)
```

**Signature**

```ts
declare const lessThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L210)

Since v2.0.0