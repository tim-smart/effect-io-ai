Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.divide

Divides one `bigint` by another safely.

**When to use**

Use to divide `bigint` values while representing division by zero as
`Option.none`.

**Details**

Uses JavaScript `bigint` division, so non-exact quotients are truncated
toward zero. Returns `Option.none()` when the divisor is `0n`.

**Example** (Dividing bigints safely)

```ts
import { BigInt, Option } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigInt.divide(6n, 3n), Option.some(2n))
assert.deepStrictEqual(BigInt.divide(6n, 0n), Option.none())
```

**See**

- `divideUnsafe` for division that throws when the divisor is `0n`
- `remainder` for the JavaScript remainder operation

**Signature**

```ts
declare const divide: { (that: bigint): (self: bigint) => Option.Option<bigint>; (self: bigint, that: bigint): Option.Option<bigint>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L186)

Since v2.0.0