## greaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**Example**

```ts
import * as assert from "node:assert"
import { greaterThan } from "effect/BigInt"

assert.deepStrictEqual(greaterThan(2n, 3n), false)
assert.deepStrictEqual(greaterThan(3n, 3n), false)
assert.deepStrictEqual(greaterThan(4n, 3n), true)
```

**Signature**

```ts
declare const greaterThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L249)

Since v2.0.0