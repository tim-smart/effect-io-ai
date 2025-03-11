## between

Checks if a `bigint` is between a `minimum` and `maximum` value (inclusive).

**Example**

```ts
import * as assert from "node:assert"
import { BigInt } from "effect"

const between = BigInt.between({ minimum: 0n, maximum: 5n })

assert.deepStrictEqual(between(3n), true)
assert.deepStrictEqual(between(-1n), false)
assert.deepStrictEqual(between(6n), false)
```

**Signature**

```ts
declare const between: { (options: { minimum: bigint; maximum: bigint; }): (self: bigint) => boolean; (self: bigint, options: { minimum: bigint; maximum: bigint; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L293)

Since v2.0.0